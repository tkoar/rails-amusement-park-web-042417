class UsersController < ApplicationController
  before_action :authenticate, only: :show

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
    if user_params[:admin] == 1
      @user.admin = true
    end
    if @user.save
      session[:id] = @user.id
       redirect_to user_path(@user)
    # else
    #   render :new
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user)
  end

  private
  def user_params
    params.require(:user).permit(:name, :height, :happiness, :nausea, :tickets, :admin)
  end

end
