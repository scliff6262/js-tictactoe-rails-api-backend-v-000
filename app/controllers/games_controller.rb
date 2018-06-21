class GamesController < ApplicationController
  before_action :set_game

  def create

  end

  private

  def game_params
    params.require(:product).permit(:state)
  end

  def set_game
    @game = Game.create(game_params)
  end
end
