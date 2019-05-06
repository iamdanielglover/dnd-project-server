class Api::V1::WeaponsController < ApplicationController

  def index
    @weapons = Weapon.all
    render json: @weapons
  end

  def show
    @weapon = Weapon.find_by(id: params[:id])
    if @weapon
      render json: @weapon
    else
      render json: {error: "Couldn't find that Weapon"}
    end
  end

  def create
    @weapon = Weapon.new(weapon_params)
    if @weapon.save
      render json: @weapon
    else
      render json: {error: "Couldn't Forge Weapon"}
    end
  end

  private

  def weapon_params
    params.permit(
      :name,
      :attk_bonus,
      :damage
    )
  end

end
