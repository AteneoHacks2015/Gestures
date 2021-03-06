class Api::UsersController < Api::ApplicationControllers

  def create
    @user = User.new(user_params)

    if @user.save
      render json: @user, status: :created
    else
      render json: {errors: @user.errors.full_messages},
             status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:login, :password, :role, :name, :school)
  end
end
