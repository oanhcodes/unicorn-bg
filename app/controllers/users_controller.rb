class UsersController < ApplicationController

  def new
  end

  def create
    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
      redirect_to '/'
    else
      flash.notice = "Something went wrong. Try Again."
      redirect_to '/signup'
    end
  end

  def show
    @user = User.find(params[:id])
    @games = @user.games
    @friends = @user.friends

  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end

end
