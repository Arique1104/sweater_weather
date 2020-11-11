class ImageFacade

  def self.find_image(city)
    images = ImageService.find_image(city)
    Image.new(images, city)
  end
end
