class Api::V1::CharacterProficienciesController < ApplicationController
  def index
      @character_proficiencies = CharacterProficiency.all
      render json: @character_proficiencies
  end

  def create
    charprof = CharacterProficiency.new(character_proficiency_params)
    if charprof.valid?
      charprof.save
      render json: charprof
    else
      render json: {Error: "Couldn't figure it out brah."}
    end
  end

  private

  def character_proficiency_params
    params.permit(:character_id, :proficiency_id)
  end
end
