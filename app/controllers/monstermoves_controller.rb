class MonstermovesController < ApplicationController
  def index
    monstermoves = Monstermove.all
    render json: monstermoves
  end

  def create
    monstermove = Monstermove.create(monstermove_params)
    render json: monstermove
  end

  private
  def monstermove_params
    params.require(:monstermove).permit(:monster_id, :move_id)
  end
end
