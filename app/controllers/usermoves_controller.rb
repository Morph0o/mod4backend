class UsermovesController < ApplicationController
  def index
    usermoves = Usermove.all
    render json: usermoves
  end

  def create
    usermove = Usermove.create(usermove_params)
    render json: usermove
  end

  private
  def usermove_params
    params.require(:usermove).permit(:user_id, :move_id)
  end
end
