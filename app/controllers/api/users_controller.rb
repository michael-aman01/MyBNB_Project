class Api::UsersController < ApplicationController

  wrap_parameters include: User.attribute_names + ['password']

  def index
    @users = User.all
    data = {}
    @users.map do |user|
      data[user.id] = user
    end
    render json: data
  end

  def create
    @user = User.new(user_params)
    if @user && @user.save
      login!(@user)
      render :show
    else
      render json: { errors: @user.errors.full_messages }
    end
  end

  def show
    @user = User.find_by(id: params[:id])
    if @user
      data = {
        id: @user.id,
        reservations: @user.reservations,
        reservation_images: @user.reservations.map {|res| res.listing.images.map{|l| l.url}},
        reservations_listings: @user.reservations.map {|res| res.listing},
        email: @user.email,
        last_name: @user.last_name,
        first_name: @user.first_name,
        reviews: @user.reviews, 
        session_token: @user.session_token,
        updated_at: @user.updated_at,
        created_at: @user.created_at
      }
      render json: data
    else
      render json: :error  
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :first_name, :last_name)
  end

end
