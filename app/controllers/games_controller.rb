class GamesController < ApplicationController
  #before_action :set_game

  def create
    @game = Game.create(state: game_params)
    render json: @game if @game.save
  end

  private

  def game_params
    params.require(:state)
  end

  def set_game

  end
end
