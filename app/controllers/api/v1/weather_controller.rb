class Api::V1::WeatherController < ApplicationController
  def index
    forecast = WeatherFacade.get_weather(params[:location])
    render json: ForecastSerializer.new(forecast)
  end
end