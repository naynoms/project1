class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
  @user = User.new user_params
    if @user.save
      session[:user_id] = @user.id #signs in when you sign up
      redirect_to root_path
    else
      render :new
    end

  end

  def edit
    @user = @current_user
  end

  def update
  user = @current_user
  user.update user_params
  redirect_to root_path #probably redirect to users show page ie. profile page
  end

  def show
    @user = User.find params[:id]
  end

private
  def user_params
      params.require(:user).permit(:email, :password, :password_confirmation)
  end

end
