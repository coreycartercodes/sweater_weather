class Api::V1::TrailController < ApplicationController
  def index
    render json: TrailSerializer.new(TrailFacade.get_weather(params[:location]))
  end
end