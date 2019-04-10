class Api::V1::UsersController < ApplicationController
  skip_before_action :authorized, only: [:create, :index, :destroy]
  
  def index
    render json: User.all
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      @token = encode_token(user_id: @user.id)
      render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
    else
      render json: { error: 'failed to create user' }, status: :not_acceptable
    end
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)    
  end

  def destroy
    User.find(params[:id]).destroy
  end

  private
 
  def user_params
    params.require(:user).permit(:username, :password, :bio, :avatar)
  end
end
