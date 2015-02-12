class UserController < ApplicationController

  def index
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    if current_user
      redirect_to user_path(current_user), notice: "You already have an account"
      return
    else
      @user = User.new
    end
  end

  def create
  end

  def edit
  end

  def update
  end

  def destry
  end

  private
  end
  
end
