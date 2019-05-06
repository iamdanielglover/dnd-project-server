class Api::V1::CharacterArmorsController < ApplicationController

    def index
      @char_armors = CharacterArmor.all
      render json: @char_armors
    end

    def show
      @char_armor = CharacterArmor.find(params[:id])
      if @char_armor
        render json: @char_armor
      else
        render json: {error: "Couldn't find this connection"}
      end
    end

    def create
      @char_armor = CharacterArmor.new(chararms_params)
      if @char_armor.save
        render json: @char_armor
      else
        render json: {error: "Couldn't Bind This Item To You"}
      end
    end

    def delete
      @char_armor = CharacterArmor.find_by(id: params[:id])
      @char_armor.destroy
    end

    private

    def chararms_params
      params.permit(
        :character_id,
        :armor_id
      )
    end

end
