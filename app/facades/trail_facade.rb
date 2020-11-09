class TrailFacade

  def self.get_weather(location)

    coords = LocationService.get_location(location)
    trails = HikingService.get_trails(coords[:lat], coords[:lng])
    weather = WeatherService.forecast(coords[:lat], coords[:lng])
    @trails = Trail.new(trails, weather, location)
  end
end