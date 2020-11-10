class ImageService
  
  def self.pic(location)
    response = Faraday.new("https://api.unsplash.com/search/photos").get do |request|
      request.params['query'] = location
      request.params['client_id'] = ENV['IMAGE_KEY']
    end
    JSON.parse(response.body, symbolize_names: true)[:results][0]
  end
end