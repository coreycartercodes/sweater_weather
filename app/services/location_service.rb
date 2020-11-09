class LocationService

  def self.conn(uri)
    url = "http://www.mapquestapi.com/" + uri
    Faraday.new(url)
  end

  def self.get_location(location)
    response = conn("geocoding/v1/address?key=#{ENV['MAPQUEST_KEY']}&location=#{location}").get
    JSON.parse(response.body, symbolize_names: true)[:results][0][:locations][0][:displayLatLng]
  end

  def self.get_distance(start, stop)
    response = conn("directions/v2/route?key=#{ENV['MAPQUEST_KEY']}&from=#{start}&to=#{stop}").get
    JSON.parse(response.body, symbolize_names: true)[:route][:distance]
  end
end