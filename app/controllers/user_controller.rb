class UserController < ApplicationController
  skip_before_action :verify_authenticity_token
  skip_before_action :authenticate_request, only: [:create]
  before_action :set_user, only:[:show ,:destory]
  
  def index
    @users = User.all
    render json: @users, status: :ok
  end
  
  def show
    render json: @user, status: :ok
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      render json: @user, status: :created
    else
      render json: {errors: @user.errors.full_messages },
      status: :unprocessable_entity
    end
  end
  
  def update
    unless @user.update(user_params)
      render json: {errors: @user.errors.full_messages },
      status: :unprocessable_entity
    end
  end
  
  def def destroy
    @user.destroy
  end
  
  private
  def user_params
    params.permit(
      :email,
      :password,
      :name,
      :phone,
      :role,
      :profile_picture
    )
  end
  
  def set_user
    @user = User.find(params[:id])
  end
end
