class GamesController < ApplicationController
  def create

  end

  private

  def game_params
    params.require(:product).permit(:state)
  end

  def set_game
    @game = Game.create(product_params)
  end
end
