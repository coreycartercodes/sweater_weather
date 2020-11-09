class Trail
  attr_reader :id,
              :forecast,
              :location,
              :trails

  def initialize(trail_data, weather_data, my_location)
    @id = "null"
    @forecast = { 
      summary: weather_data[:current][:weather][0][:description], temperature: weather_data[:current][:temp].to_s 
                }
    @location = my_location
    @trails = gather_trails(trail_data, my_location)
  end

  def gather_trails(data, my_location)
    data[:trails].map do |trail|
      {
        name: trail[:name],
        summary: trail[:summary],
        difficulty: trail[:difficulty],
        location: trail[:location],
        distance_to_trail: LocationService.get_distance(my_location, trail[:location]).to_s
      }
    end
  end

end