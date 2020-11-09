class WeatherService

  def self.forecast(lat,lon)
    response = Faraday.new("https://api.openweathermap.org/data/2.5/onecall?lat=#{lat}&lon=#{lon}&exclude=minutely,alerts&units=imperial&appid=#{ENV['WEATHER_KEY']}").get
    JSON.parse(response.body, symbolize_names: true)
  end
end