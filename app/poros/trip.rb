class Trip
  attr_reader :start_city,
              :end_city, 
              :travel_time, 
              :weather_at_eta

  def initialize(trip_data)
    @start_city = trip_data[:start_city]
    @end_city = trip_data[:end_city]
    @travel_time = trip_data[:travel_time]
    @weather_at_eta = get_weather(trip_data[:weather])
  end
end