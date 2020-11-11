class ImageService
  
  def self.pic(location)
    response = Faraday.new("https://api.unsplash.com/search/photos").get do |req|
      req.params['query'] = location
      req.params['client_id'] = ENV['IMAGE_KEY']
    end
    JSON.parse(response.body, symbolize_names: true)[:results][0]
  end
end