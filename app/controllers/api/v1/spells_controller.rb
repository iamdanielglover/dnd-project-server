class Api::V1::SpellsController < ApplicationController

  def index
    @spells = Spell.all
    render json: @spells
  end


  def show
    @spell = Spell.find_by(id: params[:id])
    if @spell
      render json: @spell
    else
      render json: {errors: "Couldn't find that spell"}
    end
  end

  def create
    @spell = Spell.new(spell_params)
      if @spell.valid?
        @spell.save
        render json: @spell
      else
        render json: { error: "Invalid spell input" }
      end
  end

  def destroy
    @spell = Spell.find_by(id: params[:id])

    if @spell
      @spell.delete
      render json: @spell
    else
      render json: {error: "Delete Failed"}
    end
  end

  private

  def spell_params
    params.require(:spell).permit(
      :name,
      :character_id,
      :api_id
    )
  end
end
