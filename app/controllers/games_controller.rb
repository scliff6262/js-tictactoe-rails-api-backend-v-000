class GamesController < ApplicationController
  def create

  end

  private

  def game_params
    params.require(:product).permit(:state)
  end
end
