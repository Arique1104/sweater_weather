class MunchiesFacade

  def self.find_restaurant(params)
    location = MapService.find_destination_time(params[:start], params[:end])
    dest_and_time = DestinationTime.new(location, params[:end])

    

    Muncie.new(dest_and_time, )
  end

end
