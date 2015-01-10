class Api::ItemsController < Api::ApplicationController
  before_filter :require_user, except: [:show, :index]

  def index
    difficulty = params[:difficulty] || 1
    count = params[:count] || 3
    all = params[:all] || false

    if all
      @items = Item.all
    else
      @items = Item.random_items(difficulty, count)
    end

    render json: @items, include: [:translations], status: :ok
  end

  def create
    if @current_user.items.create(item_params)
      render json: @current_user.items.last,
             include: [:translations],
             status: :created
    else
      render json: {errors: @current_user.items.errors.full_messages},
             status: :bad_request
    end
  end

  def show
    @item = Item.find(params[:id])
    render json: @item,
           include: :translations,
           status: :ok
  end

  def user_items
    @items = @current_user.items
    render json: @items,
           include: [:translations],
           status: :ok
  end

  def submit_answer
    @item = Item.find(params[:id])
    @answer = Translation.new(params[:answer])
    if @item.correct? @answer
      @current_user.exp_up(@item.points)
      render json: {user: @current_user,
                    message: "correct",
                    status: :ok}
    else
      render json: {message: "incorrect",
                    status: :ok}
    end
  end

  private

  def item_params
    params.require(:item).permit(:phrase, :difficulty)
  end
end
