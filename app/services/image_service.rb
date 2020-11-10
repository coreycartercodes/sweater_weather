class ImageService
  def self.conn(uri)
    url = "https://api.unsplash.com/" + uri
    Faraday.new(url)

  end

  def self.pic(location)
    search_params = { query: location, client_id: ENV['IMAGE_KEY'] }
    response = conn("search/photos").get do |request|
      request.body = search_params
    end
    JSON.parse(response.body, symbolize_names: true)
  end
end