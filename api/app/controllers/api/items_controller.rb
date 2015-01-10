class Api::ItemsController < Api::ApplicationController
  before_filter :require_user, except: [:show, :index]

  def index
    @items = Item.all
  end

  def create
    if @current_user.items.create(item_params)
      render json: @current_user.items.last, status: :created
    else
      render json: {errors: @current_user.items.errors.full_messages},
             status: :bad_request
    end
  end

  private

  def item_params
    params.require(:item).permit(:phrase, :difficulty)
  end
end
