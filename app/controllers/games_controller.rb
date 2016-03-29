class GamesController < ApplicationController
  def index
     @q = Game.ransack(params[:q])
     @games = @q.result(distinct:true)
     @users = User.all
  end

  def new
  end

  def create
  end

  def show
    @q = Game.ransack(params[:q])
    @games = @q.result(distinct:true)
    @game = Game.find(params[:id])
  end

  def edit
  end

  def update
  end

  def delete
  end

end
