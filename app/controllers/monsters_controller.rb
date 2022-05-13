class MonstersController < ApplicationController
  before_action :set_haunted_house, only: [:new, :create]

  def new
    @monster = Monster.new # for the form
  end

  def create
    @monster = Monster.new(monster_params)
    @monster.haunted_house = @haunted_house
    if @monster.save
      redirect_to haunted_house_path(@haunted_house)
    else
      render :new
    end
  end

  def destroy
    @monster = Monster.find(params[:id])
    @monster.destroy
    redirect_to haunted_house_path(@monster.haunted_house)
  end

  private

  def monster_params
    params.require(:monster).permit(:name, :image_url, :photo)
  end

  def set_haunted_house
    @haunted_house = HauntedHouse.find(params[:haunted_house_id])
  end
end
