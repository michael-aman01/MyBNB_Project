class Api::UsersController < ApplicationController
  wrap_parameters include: User.attribute_names + ['password']

  def create
    @user = User.new(user_params)
    if @user && @user.save
      login!(@user)
      render :show
    else
      render json: { errors: @user.errors.full_messages }
    end
  end

  private

  def user_params
    params.require(:user).permit(:username,:email, :password)
  end

end