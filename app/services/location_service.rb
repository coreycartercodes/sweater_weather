class LocationService

  def self.conn(uri)
    url = "http://www.mapquestapi.com/" + uri
    Faraday.new(url)
  end

  def self.get_location(location)
    response = conn("geocoding/v1/address").get do |req|
      req.params['key'] = ENV['MAPQUEST_KEY']
      req.params['location'] = location
    end
    JSON.parse(response.body, symbolize_names: true)[:results][0][:locations][0][:displayLatLng]
  end

  def self.directions(start, stop)
    response = conn("directions/v2/route").get do |req|
      req.params['key'] = ENV['MAPQUEST_KEY']
      req.params['from'] = start
      req.params['to'] = stop
    end
    JSON.parse(response.body, symbolize_names: true)
  end
end