class Api::V1::CharacterWeaponsController < ApplicationController
  def index
    @char_weps = CharacterWeapon.all
    render json: @char_weps
  end

  def show
    @char_wep = CharacterWeapon.find_by(id: params[:id])
    if @char_wep
      render json: @char_wep
    else
      render json: {error: "Couldn't find this connection"}
    end
  end

  def create
    @char_wep = CharacterWeapon.new(charwep_params)
    if @char_wep.save
      render json: @char_wep
    else
      render json: {error: "Couldn't Bind This Item To You"}
    end
  end

  def destroy
    @char_wep = CharacterWeapon.find_by(id: params[:id])
    if @char_wep
      @char_wep.delete
      render json: @char_wep
    else
      render json: {error: "Couldn't find item to Drop"}
    end
  end

  private

  def charwep_params
    params.permit(
      :character_id,
      :weapon_id
    )
  end

end
