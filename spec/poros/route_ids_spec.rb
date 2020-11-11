require 'rails_helper'

RSpec.describe RouteIds do
  it 'exists' do
    data = {:routes=>
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
    route_ids = RouteIds.new(data)

    expect(route_ids.id_list).to eq("114046224,109469221,112571209,108898279,109469335")
  end
end
