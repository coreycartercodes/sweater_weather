class HikingService

  def self.get_trails(lat,lon)
    response = Faraday.new("https://www.hikingproject.com/data/get-trails?key=#{ENV['HIKING_KEY']}&lat=#{lat}&lon=#{lon}").get
    JSON.parse(response.body, symbolize_names: true)
  end
end