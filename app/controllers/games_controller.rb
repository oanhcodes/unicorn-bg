class GamesController < ApplicationController
  def index
  end

  def new
  end

  def create
  end

  def show
    @game = Game.find(params[:id])
  end

  def edit
  end

  def update
  end

  def delete
  end

end
