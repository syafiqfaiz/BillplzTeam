class Manage::UsersController < ApplicationController
  before_action :set_user, only: [:show, :delete, :edit, :update]

  def index
    @users = User.includes(:roles).all
  end

  def show
  end

  def edit
  end

  def update
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to manage_user_path(@user), notice: "A new user has been created"
    else
      render :new, error: 'An error has stop user from being created'
    end
  end

  def delete
    @user.update(locked_at: DateTime.now)
    redirect_to manage_users_path, notice: 'User has been locked from using this platform'
  end

  def new
    @user = User.new
  end

  private
  def set_user
    @user = User.find_by_id(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
