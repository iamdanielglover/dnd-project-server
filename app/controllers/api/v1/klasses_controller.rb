class Api::V1::KlassesController < ApplicationController
  def index
    @klasses = Klass.all
    render json: @klasses
  end
end
