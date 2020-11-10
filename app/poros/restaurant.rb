class Restaurant
 attr_reader
  def initialize(restaurant)
    @name = restaurant[:businesses][0][:name]
    @address = format_address(restaurant[:businesses][0][:location])
  end

  def format_address(info)
    "#{info[:address1]}, #{info[:address2]}, #{info[:city]}, #{info[:state]} #{info[:zip_code]}"
  end

end
