class LocationService

  def self.get_location(location)
    response = Faraday.new("http://www.mapquestapi.com/geocoding/v1/address?key=#{ENV['MAPQUEST_KEY']}&location=#{location}").get
    JSON.parse(response.body, symbolize_names: true)[:results][0][:locations][0][:displayLatLng]
  end
end