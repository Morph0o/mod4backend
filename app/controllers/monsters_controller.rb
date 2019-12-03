class MonstersController < ApplicationController
  def index
    monsters = Monster.all
    render json: monsters
  end

  def create
    monster = Monster.create(monster_params)
    render json: monster
  end

  private

  def monster_params
    params.require(:monster).permit(:name, :str, :desc, :img, :hp)
  end

end
