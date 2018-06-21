class GamesController < ApplicationController
  #before_action :set_game

  def create
    binding.pry
    @game = Game.create(game_params)
    render json: @game if @game.save
  end

  private

  def game_params
    params.require(:game).permit(:state)
  end

  def set_game

  end
end
