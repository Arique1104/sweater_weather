class Image
 attr_reader :id, :location, :image_url, :credit
  def initialize(data, location)
    @location = location
    @image_url = data[:photos][0][:url]
    @credit = format_credit(data[:photos][0])
  end

  def format_credit(info)
    {
      source: 'pexels.com/api',
      author: info[:photographer],
      logo: 'https://theme.zdassets.com/theme_assets/9028340/1e73e5cb95b89f1dce8b59c5236ca1fc28c7113b.png'

    }
  end

end
