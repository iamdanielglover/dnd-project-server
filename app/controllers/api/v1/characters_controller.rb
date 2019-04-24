class Api::V1::CharactersController < ApplicationController
  def index
    @characters = Character.all
    render json: @characters
  end

  def show
    @character = Character.find_by(id: params[:id])
    if @character
      render json: @character
    else
      render json: {error: "Character not found"}, status: 404
    end
  end

  def create
    @character = Character.new(character_params)
    if @character.valid?
      @character.set_up
      @character.save
      render json: @character
    else
      render json: "Failed To Create Character"
    end
  end

  private

  def character_params
    params.require(:character).permit(
      :user_id,
      :name,
      :klass_id,
      :race_id,
      :alignment,
      :level,
      :experience,
      :strength,
      :dexterity,
      :constitution,
      :intelligence,
      :wisdom,
      :charisma
    )
  end
end

# :user_id,
# :name,
# :klass_id,
# :race_id,
# # :armor_class,
# # :initiative,
# # :speed,
# :alignment,
# :level,
# :experience,
# # :proficiency_bonus,
# # :max_hp,
# # :current_hp,
# :stength,
# :dexterity,
# :constitution,
# :intelligence,
# :wisdom,
# :charisma
