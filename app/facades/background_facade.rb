class BackgroundFacade

  def self.get_pic(location)
    Background.new(ImageService.pic(location), location)
  end
end