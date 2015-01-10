class Api::ItemsController < Api::ApplicationController
  before_filter :require_user, except: [:show, :index]

  def index
    difficulty = params[:difficulty] || 1
    count = params[:count] || 3
    @items = Item.random_items(difficulty, count)
    render json: @items, status: :ok
  end

  def create
    if @current_user.items.create(item_params)
      render json: @current_user.items.last, status: :created
    else
      render json: {errors: @current_user.items.errors.full_messages},
             status: :bad_request
    end
  end

  def user_items
    @items = @current_user.items
    render json: @items, status: :ok
  end

  private

  def item_params
    params.require(:item).permit(:phrase, :difficulty)
  end
end
