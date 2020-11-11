class TripFacade

  def self.trip_info(origin, destination)
    location = LocationService.directions(origin, destination)
    dest_coords = LocationService.get_location(destination)
    weather = WeatherService.forecast(dest_coords[:lat], dest_coords[:lng])
    trip_data = {
                  start_city: origin,
                  end_city: destination,
                  location_data: location,
                  weather_data: weather
                }
    Trip.new(trip_data)
  end
end