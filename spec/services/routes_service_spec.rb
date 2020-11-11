require 'rails_helper'

describe RoutesService do
  context 'class methods' do
    it 'find_routes' do
      routes_response = {:routes=>
      [{:id=>114046224,
        :name=>"High Bo Diddle",
        :type=>"TR, Boulder",
        :rating=>"5.10a V0",
        :stars=>4.5,
        :starVotes=>2,
        :pitches=>1,
        :location=>["North Carolina", "Northern Mountains Region", "Bailey Mountain"],
        :url=>"https://www.mountainproject.com/route/114046224/high-bo-diddle",
        :imgSqSmall=>
         "https://cdn2.apstatic.com/photos/climb/114046289_sqsmall_1517197960.jpg",
        :imgSmall=>
         "https://cdn2.apstatic.com/photos/climb/114046289_small_1517197960.jpg",
        :imgSmallMed=>
         "https://cdn2.apstatic.com/photos/climb/114046289_smallMed_1517197960.jpg",
        :imgMedium=>
         "https://cdn2.apstatic.com/photos/climb/114046289_medium_1517197960.jpg",
        :longitude=>-82.5896,
        :latitude=>35.8687},
       {:id=>109469221,
        :name=>"Foot work",
        :type=>"TR",
        :rating=>"5.9",
        :stars=>3.7,
        :starVotes=>3,
        :pitches=>1,
        :location=>["Tennessee", "Blue Hole Falls", "Highball Area", "Back Crag"],
        :url=>"https://www.mountainproject.com/route/109469221/foot-work",
        :imgSqSmall=>
         "https://cdn2.apstatic.com/photos/climb/109469241_sqsmall_1494351105.jpg",
        :imgSmall=>
         "https://cdn2.apstatic.com/photos/climb/109469241_small_1494351105.jpg",
        :imgSmallMed=>
         "https://cdn2.apstatic.com/photos/climb/109469241_smallMed_1494351105.jpg",
        :imgMedium=>
         "https://cdn2.apstatic.com/photos/climb/109469241_medium_1494351105.jpg",
        :longitude=>-82.1808,
        :latitude=>36.4632},
       {:id=>112571209,
        :name=>"Feeding the Spyders",
        :type=>"TR",
        :rating=>"5.9 R",
        :stars=>4,
        :starVotes=>1,
        :pitches=>1,
        :location=>["Tennessee", "Blue Hole Falls", "Highball Area", "Great Roof"],
        :url=>"https://www.mountainproject.com/route/112571209/feeding-the-spyders",
        :imgSqSmall=>
         "https://cdn2.apstatic.com/photos/climb/112571266_sqsmall_1494313802.jpg",
        :imgSmall=>
         "https://cdn2.apstatic.com/photos/climb/112571266_small_1494313802.jpg",
        :imgSmallMed=>
         "https://cdn2.apstatic.com/photos/climb/112571266_smallMed_1494313802.jpg",
        :imgMedium=>
         "https://cdn2.apstatic.com/photos/climb/112571266_medium_1494313802.jpg",
        :longitude=>-82.6642,
        :latitude=>36.2863},
       {:id=>108898279,
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
        :imgSmall=>
         "https://cdn2.apstatic.com/photos/climb/112571197_small_1494313799.jpg",
        :imgSmallMed=>
         "https://cdn2.apstatic.com/photos/climb/112571197_smallMed_1494313799.jpg",
        :imgMedium=>
         "https://cdn2.apstatic.com/photos/climb/112571197_medium_1494313799.jpg",
        :longitude=>-82.1808,
        :latitude=>36.4632},
       {:id=>109469335,
        :name=>"Wash Board",
        :type=>"Trad, TR",
        :rating=>"5.6",
        :stars=>2,
        :starVotes=>4,
        :pitches=>1,
        :location=>["Tennessee", "Blue Hole Falls", "Highball Area", "Back Crag"],
        :url=>"https://www.mountainproject.com/route/109469335/wash-board",
        :imgSqSmall=>
         "https://cdn2.apstatic.com/photos/climb/112570980_sqsmall_1494313781.jpg",
        :imgSmall=>
         "https://cdn2.apstatic.com/photos/climb/112570980_small_1494313781.jpg",
        :imgSmallMed=>
         "https://cdn2.apstatic.com/photos/climb/112570980_smallMed_1494313781.jpg",
        :imgMedium=>
         "https://cdn2.apstatic.com/photos/climb/112570980_medium_1494313781.jpg",
        :longitude=>-82.1808,
        :latitude=>36.4632}],
     :success=>1}

      route_ids = RouteIds.new(routes_response)

      routes_response = RoutesService.find_routes(route_ids)


      expect(routes_response).to be_a(Hash)

      route = routes_response[:routes][0]
      expect(route).to have_key(:id)
      expect(route[:id]).to be_an(Integer)

      expect(route).to have_key(:name)
      expect(route[:name]).to be_a(String)

      expect(route).to have_key(:name)
      expect(route[:name]).to be_a(String)

      expect(route).to have_key(:type)
      expect(route[:type]).to be_a(String)

      expect(route).to have_key(:rating)
      expect(route[:rating]).to be_a(String)

      expect(route).to have_key(:stars)
      expect(route[:stars]).to be_a(Float).or be_an(Integer)

      expect(route).to have_key(:starVotes)
      expect(route[:starVotes]).to be_a(Integer)

      expect(route).to have_key(:pitches)
      expect(route[:pitches]).to be_a(String).or be_empty

      expect(route).to have_key(:location)
      expect(route[:location]).to be_a(Array)

      expect(route).to have_key(:url)
      expect(route[:url]).to be_a(String)

      expect(route).to have_key(:imgSqSmall)
      expect(route[:imgSqSmall]).to be_a(String)

      expect(route).to have_key(:imgSmall)
      expect(route[:imgSmall]).to be_a(String)

      expect(route).to have_key(:imgSmallMed)
      expect(route[:imgSmallMed]).to be_a(String)

      expect(route).to have_key(:imgMedium)
      expect(route[:imgMedium]).to be_a(String)

      expect(route).to have_key(:longitude)
      expect(route[:longitude]).to be_a(Float).or be_an(Integer)

      expect(route).to have_key(:latitude)
      expect(route[:latitude]).to be_a(Float).or be_an(Integer)

    end

    it "find_routes_by_long_lat" do
      city = 'boulder,co'
      long_lat_data = MapService.find_long_lat(city)
      long_lat = LongLat.new(long_lat_data)
      routes_response = RoutesService.find_routes_by_long_lat(long_lat)

      expect(routes_response).to be_a(Hash)
      expect(routes_response).to have_key(:routes)
      expect(routes_response[:routes]).to be_an(Array)
      route = routes_response[:routes][0]

      expect(route).to have_key(:id)
      expect(route[:id]).to be_an(Integer)

      expect(route).to have_key(:id)
      expect(route[:id]).to be_an(Integer)

      expect(route).to have_key(:name)
      expect(route[:name]).to be_a(String)

      expect(route).to have_key(:type)
      expect(route[:type]).to be_an(String)

      expect(route).to have_key(:rating)
      expect(route[:rating]).to be_an(String)

      expect(route).to have_key(:stars)
      expect(route[:stars]).to be_an(Float)

      expect(route).to have_key(:starVotes)
      expect(route[:starVotes]).to be_an(Integer)

      expect(route).to have_key(:pitches)
      expect(route[:pitches]).to be_an(Integer).or be_empty

      expect(route).to have_key(:location)
      expect(route[:location]).to be_an(Array)

      expect(route).to have_key(:url)
      expect(route[:url]).to be_an(String)

      expect(route).to have_key(:imgSqSmall)
      expect(route[:imgSqSmall]).to be_an(String)

      expect(route).to have_key(:imgSmallMed)
      expect(route[:imgSmallMed]).to be_an(String)

      expect(route).to have_key(:imgMedium)
      expect(route[:imgMedium]).to be_an(String)

      expect(route).to have_key(:longitude)
      expect(route[:longitude]).to be_an(Float).or be_an(Integer)

      expect(route).to have_key(:latitude)
      expect(route[:latitude]).to be_an(Float).or be_an(Integer)
    end
  end
end
