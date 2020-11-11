require 'rails_helper'

RSpec.describe ClimbingRoutes do
  it 'exists' do
    location = "erwin, tn"
    current_weather_data = {
       :dt=>1605118973,
       :sunrise=>1605096180,
       :sunset=>1605133477,
       :temp=>69.53,
       :feels_like=>74.07,
       :pressure=>1016,
       :humidity=>92,
       :dew_point=>67.1,
       :uvi=>3.91,
       :clouds=>52,
       :visibility=>10000,
       :wind_speed=>3,
       :wind_deg=>188,
       :wind_gust=>5.01,
       :weather=>[{:id=>500, :main=>"Rain", :description=>"light rain", :icon=>"10d"}],
       :rain=>{:"1h"=>0.27}}
    current_weather = CurrentWeather.new(current_weather_data)

    initial_location = "erwin, tn"
    route = {:id=>108898279,
     :name=>"Back Crack",
     :type=>"Trad",
     :rating=>"5.7",
     :stars=>2.8,
     :starVotes=>4,
     :pitches=>"",
     :location=>["Tennessee", "Blue Hole Falls", "Highball Area", "Back Crag"],
     :url=>"https://www.mountainproject.com/route/108898279/back-crack",
     :imgSqSmall=>
      "https://cdn2.apstatic.com/photos/climb/112571197_sqsmall_1494313799.jpg",
     :imgSmall=>"https://cdn2.apstatic.com/photos/climb/112571197_small_1494313799.jpg",
     :imgSmallMed=>
      "https://cdn2.apstatic.com/photos/climb/112571197_smallMed_1494313799.jpg",
     :imgMedium=>"https://cdn2.apstatic.com/photos/climb/112571197_medium_1494313799.jpg",
     :longitude=>-82.1808,
     :latitude=>36.4632}

    curated_route = []
    curated_route << CuratedRoute.new(route, initial_location)

    climbing_route = ClimbingRoutes.new(location, current_weather, curated_route)


    expect(climbing_route).to be_a(ClimbingRoutes)
    expect(climbing_route.forecast).to be_a(Hash)
    expect(climbing_route.forecast).to have_key(:summary)
    expect(climbing_route.forecast[:summary]).to eq("light rain")
    expect(climbing_route.forecast).to have_key(:temperature)
    expect(climbing_route.forecast[:temperature]).to eq(69.53)
    expect(climbing_route.location).to eq("erwin, tn")
    expect(climbing_route.routes).to be_an(Array)
    expect(climbing_route.routes[0]).to be_a(CuratedRoute)
  end
end
