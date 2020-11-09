class Api::V1::WeatherController < ApplicationController
  def index
    render json: ForecastSerializer.new(WeatherFacade.get_weather(params[:location]))
  end
end