class TripFacade

  def self.trip_info(origin, destination)
    location = LocationService.directions(origin, destination)
binding.pry
    weather = WeatherService
  end
end