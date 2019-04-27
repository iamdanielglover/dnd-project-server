class Api::V1::ProficienciesController < ApplicationController
  def index
    @proficiencies = Proficiency.all
    render json: @proficiencies
  end
end
