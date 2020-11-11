require 'rails_helper'

RSpec.describe CuratedRoute do
  it 'exists' do
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

    curated_route = CuratedRoute.new(route, initial_location)

    expect(curated_route).to be_a(CuratedRoute)
    expect(curated_route.distance_to_route).to eq(35.933)

    expect(curated_route.location).to eq(["Tennessee", "Blue Hole Falls", "Highball Area", "Back Crag"])

    expect(curated_route.name).to eq("Back Crack")
    expect(curated_route.rating).to eq("5.7")
    expect(curated_route.type).to eq("Trad")

  end
end
