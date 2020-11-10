class Background
  attr_reader :image, :id

  def initialize(data, loc)
    @id = "null"
    @image = { 
              location: loc,
              image_url: data[:urls][:full],
              credit: 
                {
                  source: "images.unsplash.com",
                  author: data[:user][:name],
                  logo: "https://unsplash-assets.imgix.net/marketing/press-header.jpg"
                }
              }
  end


end