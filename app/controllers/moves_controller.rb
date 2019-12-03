class MovesController < ApplicationController
  def index
    moves = Move.all
    render json: moves
  end

  def create
    move = Move.create(monstermove_params)
    render json: move
  end

  private
  def monstermove_params
    params.require(:move).permit(:name, :attack, :desc)
  end
end
