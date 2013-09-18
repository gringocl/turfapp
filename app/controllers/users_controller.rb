class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]


  def index
    @users = User.all
  end

  def show
  end

  def new
    @user = User.new
  end

  def edit
  end

  def create
    @user = User.new(user_params)

    if @user.save
      flash[:notice] = "User Saved!"
      redirect_to users_path
    else
      render 'new'
    end
  end

  def update
    if @user.update(user_params)
      flash[:notice] = "User Updated!"
      redirect_to users_path
    else
      render 'edit'
    end

  end

  def destroy
    @user.destroy

    redirect_to users_path
  end

  private
    def user_params
      params.require(:user).permit(:first_name, :last_name, :password, :password_confirmation, :email)
    end

    def set_user
      @user = User.find(params[:id])
    end
end
