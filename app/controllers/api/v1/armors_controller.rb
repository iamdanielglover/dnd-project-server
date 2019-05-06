class Api::V1::ArmorsController < ApplicationController

  def index
    @armors = Armor.all
    render json: @armors
  end

  def show
    @armor = Armor.find(params[:id])
    if @armor
      render json: @armor
    else
      render json: {error: "Couldn't find this Armor"}
    end
  end

  def create
    @armor = Armor.new(armor_params)
    if @armor.save
      render json: @armor
    else
      render json: {error: "Couldn't Forge this Armor"}
    end
  end

  private

  def armor_params
    params.permit(
      :name,
      :armor_class
    )
  end
end
