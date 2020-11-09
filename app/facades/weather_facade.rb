class WeatherFacade

  def self.get_weather(location)
    coords = LocationService.get_location(location)
    weather = WeatherService.forecast(coords[:lat], coords[:lng])
    @forecast = Forecast.new(weather)
  end
end