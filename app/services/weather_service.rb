class WeatherService

  def self.forecast(lat,lon)
    response = Faraday.get("https://api.openweathermap.org/data/2.5/onecall") do |req|
      req.params['lat'] = lat
      req.params['lon'] = lon
      req.params['exclude'] = 'minutely,alerts'
      req.params['units'] = 'imperial'
      req.params['appid'] = ENV['WEATHER_KEY']
    end
    JSON.parse(response.body, symbolize_names: true)
  end
end