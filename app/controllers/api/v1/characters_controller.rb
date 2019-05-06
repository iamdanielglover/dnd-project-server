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
      render json: {error: "Failed To Create Character"}
    end
  end

  def update
    @character = Character.find_by(id: params[:id])
    @character.update(character_params)
    @character.level_up
    @character.save
    if @character
      render json: @character
    else
      render json: {error: "Update Failed"}
    end
  end

  def destroy
    @character = Character.find_by(id: params[:id])

    if @character
      @character.character
      render json: @character
    else
      render json: {error: "Delete Failed"}
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
      :charisma,
      :current_weapon_id,
      :current_armor_id,
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
