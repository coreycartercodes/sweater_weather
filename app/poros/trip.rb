class Trip
  attr_reader :id,
              :start_city,
              :end_city, 
              :travel_time, 
              :weather_at_eta

  def initialize(trip_data)
    @id = "null"
    @start_city = trip_data[:start_city]
    @end_city = trip_data[:end_city]
    if trip_data[:location_data][:route][:formattedTime]
      @travel_time = trip_data[:location_data][:route][:formattedTime]
      @weather_at_eta = get_weather(trip_data)
    else
      @travel_time = "Impossible Route!"
      @weather_at_eta = "¯\_(ツ)_/¯"
    end
  end

  def get_weather(data)
    trip_seconds = data[:location_data][:route][:realTime]
    if trip_seconds < 172800
      hour = (trip_seconds / 3600) - 1
      {temperature: data[:weather_data][:hourly][hour][:temp],
        conditions: data[:weather_data][:hourly][hour][:weather][0][:description]}
    else
      day = (trip_seconds / 172800) - 1
      {temperature: data[:weather_data][:daily][day][:temp][:day],
        conditions: data[:weather_data][:daily][day][:weather][0][:description]}
    end
  end
  
end