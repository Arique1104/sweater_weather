require 'rails_helper'

RSpec.describe Image do
  it 'exists' do
    data = {:page=>1,
 :per_page=>15,
 :photos=>
  [{:id=>5650631,
    :width=>4181,
    :height=>2790,
    :url=>"https://www.pexels.com/photo/facade-of-stylish-building-with-inscription-5650631/",
    :photographer=>"Tim Gouw",
    :photographer_url=>"https://www.pexels.com/@punttim",
    :photographer_id=>8202,
    :src=>
     {:original=>"https://images.pexels.com/photos/5650631/pexels-photo-5650631.jpeg",
      :large2x=>"https://images.pexels.com/photos/5650631/pexels-photo-5650631.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
      :large=>"https://images.pexels.com/photos/5650631/pexels-photo-5650631.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
      :medium=>"https://images.pexels.com/photos/5650631/pexels-photo-5650631.jpeg?auto=compress&cs=tinysrgb&h=350",
      :small=>"https://images.pexels.com/photos/5650631/pexels-photo-5650631.jpeg?auto=compress&cs=tinysrgb&h=130",
      :portrait=>"https://images.pexels.com/photos/5650631/pexels-photo-5650631.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=1200&w=800",
      :landscape=>
       "https://images.pexels.com/photos/5650631/pexels-photo-5650631.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=627&w=1200",
      :tiny=>
       "https://images.pexels.com/photos/5650631/pexels-photo-5650631.jpeg?auto=compress&cs=tinysrgb&dpr=1&fit=crop&h=200&w=280"},
    :liked=>false},
   {:id=>3347244,
    :width=>4016,
    :height=>6016,
    :url=>"https://www.pexels.com/photo/running-vehicles-on-road-3347244/",
    :photographer=>"Bob Ward",
    :photographer_url=>"https://www.pexels.com/@wardmedia",
    :photographer_id=>368324,
    :src=>
     {:original=>"https://images.pexels.com/photos/3347244/pexels-photo-3347244.jpeg",
      :large2x=>"https://images.pexels.com/photos/3347244/pexels-photo-3347244.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
      :large=>"https://images.pexels.com/photos/3347244/pexels-photo-3347244.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
      :medium=>"https://images.pexels.com/photos/3347244/pexels-photo-3347244.jpeg?auto=compress&cs=tinysrgb&h=350",
      :small=>"https://images.pexels.com/photos/3347244/pexels-photo-3347244.jpeg?auto=compress&cs=tinysrgb&h=130",
      :portrait=>"https://images.pexels.com/photos/3347244/pexels-photo-3347244.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=1200&w=800",
      :landscape=>
       "https://images.pexels.com/photos/3347244/pexels-photo-3347244.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=627&w=1200",
      :tiny=>
       "https://images.pexels.com/photos/3347244/pexels-photo-3347244.jpeg?auto=compress&cs=tinysrgb&dpr=1&fit=crop&h=200&w=280"},
    :liked=>false},
   {:id=>1769395,
    :width=>2687,
    :height=>3359,
    :url=>"https://www.pexels.com/photo/aerial-photography-of-high-rise-buildings-1769395/",
    :photographer=>"Alex Powell",
    :photographer_url=>"https://www.pexels.com/@powella1190",
    :photographer_id=>871185,
    :src=>
     {:original=>"https://images.pexels.com/photos/1769395/pexels-photo-1769395.jpeg",
      :large2x=>"https://images.pexels.com/photos/1769395/pexels-photo-1769395.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
      :large=>"https://images.pexels.com/photos/1769395/pexels-photo-1769395.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
      :medium=>"https://images.pexels.com/photos/1769395/pexels-photo-1769395.jpeg?auto=compress&cs=tinysrgb&h=350",
      :small=>"https://images.pexels.com/photos/1769395/pexels-photo-1769395.jpeg?auto=compress&cs=tinysrgb&h=130",
      :portrait=>"https://images.pexels.com/photos/1769395/pexels-photo-1769395.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=1200&w=800",
      :landscape=>
       "https://images.pexels.com/photos/1769395/pexels-photo-1769395.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=627&w=1200",
      :tiny=>
       "https://images.pexels.com/photos/1769395/pexels-photo-1769395.jpeg?auto=compress&cs=tinysrgb&dpr=1&fit=crop&h=200&w=280"},
    :liked=>false},
   {:id=>1769339,
    :width=>2795,
    :height=>3494,
    :url=>"https://www.pexels.com/photo/photography-of-high-rise-building-1769339/",
    :photographer=>"Alex Powell",
    :photographer_url=>"https://www.pexels.com/@powella1190",
    :photographer_id=>871185,
    :src=>
     {:original=>"https://images.pexels.com/photos/1769339/pexels-photo-1769339.jpeg",
      :large2x=>"https://images.pexels.com/photos/1769339/pexels-photo-1769339.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
      :large=>"https://images.pexels.com/photos/1769339/pexels-photo-1769339.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
      :medium=>"https://images.pexels.com/photos/1769339/pexels-photo-1769339.jpeg?auto=compress&cs=tinysrgb&h=350",
      :small=>"https://images.pexels.com/photos/1769339/pexels-photo-1769339.jpeg?auto=compress&cs=tinysrgb&h=130",
      :portrait=>"https://images.pexels.com/photos/1769339/pexels-photo-1769339.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=1200&w=800",
      :landscape=>
       "https://images.pexels.com/photos/1769339/pexels-photo-1769339.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=627&w=1200",
      :tiny=>
       "https://images.pexels.com/photos/1769339/pexels-photo-1769339.jpeg?auto=compress&cs=tinysrgb&dpr=1&fit=crop&h=200&w=280"},
    :liked=>false},
   {:id=>5362100,
    :width=>3860,
    :height=>5790,
    :url=>"https://www.pexels.com/photo/green-city-park-located-at-bottom-of-modern-skyscrapers-5362100/",
    :photographer=>"Ricardo Esquivel",
    :photographer_url=>"https://www.pexels.com/@rickyrecap",
    :photographer_id=>722822,
    :src=>
     {:original=>"https://images.pexels.com/photos/5362100/pexels-photo-5362100.jpeg",
      :large2x=>"https://images.pexels.com/photos/5362100/pexels-photo-5362100.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
      :large=>"https://images.pexels.com/photos/5362100/pexels-photo-5362100.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
      :medium=>"https://images.pexels.com/photos/5362100/pexels-photo-5362100.jpeg?auto=compress&cs=tinysrgb&h=350",
      :small=>"https://images.pexels.com/photos/5362100/pexels-photo-5362100.jpeg?auto=compress&cs=tinysrgb&h=130",
      :portrait=>"https://images.pexels.com/photos/5362100/pexels-photo-5362100.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=1200&w=800",
      :landscape=>
       "https://images.pexels.com/photos/5362100/pexels-photo-5362100.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=627&w=1200",
      :tiny=>
       "https://images.pexels.com/photos/5362100/pexels-photo-5362100.jpeg?auto=compress&cs=tinysrgb&dpr=1&fit=crop&h=200&w=280"},
    :liked=>false},
   {:id=>373893,
    :width=>5472,
    :height=>3648,
    :url=>"https://www.pexels.com/photo/architectural-design-architecture-buildings-city-373893/",
    :photographer=>"Burst",
    :photographer_url=>"https://www.pexels.com/@burst",
    :photographer_id=>121963,
    :src=>
     {:original=>"https://images.pexels.com/photos/373893/pexels-photo-373893.jpeg",
      :large2x=>"https://images.pexels.com/photos/373893/pexels-photo-373893.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
      :large=>"https://images.pexels.com/photos/373893/pexels-photo-373893.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
      :medium=>"https://images.pexels.com/photos/373893/pexels-photo-373893.jpeg?auto=compress&cs=tinysrgb&h=350",
      :small=>"https://images.pexels.com/photos/373893/pexels-photo-373893.jpeg?auto=compress&cs=tinysrgb&h=130",
      :portrait=>"https://images.pexels.com/photos/373893/pexels-photo-373893.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=1200&w=800",
      :landscape=>"https://images.pexels.com/photos/373893/pexels-photo-373893.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=627&w=1200",
      :tiny=>"https://images.pexels.com/photos/373893/pexels-photo-373893.jpeg?auto=compress&cs=tinysrgb&dpr=1&fit=crop&h=200&w=280"},
    :liked=>false},
   {:id=>1769342,
    :width=>2725,
    :height=>3406,
    :url=>"https://www.pexels.com/photo/turned-on-building-lights-under-cloudy-sky-1769342/",
    :photographer=>"Alex Powell",
    :photographer_url=>"https://www.pexels.com/@powella1190",
    :photographer_id=>871185,
    :src=>
     {:original=>"https://images.pexels.com/photos/1769342/pexels-photo-1769342.jpeg",
      :large2x=>"https://images.pexels.com/photos/1769342/pexels-photo-1769342.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
      :large=>"https://images.pexels.com/photos/1769342/pexels-photo-1769342.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
      :medium=>"https://images.pexels.com/photos/1769342/pexels-photo-1769342.jpeg?auto=compress&cs=tinysrgb&h=350",
      :small=>"https://images.pexels.com/photos/1769342/pexels-photo-1769342.jpeg?auto=compress&cs=tinysrgb&h=130",
      :portrait=>"https://images.pexels.com/photos/1769342/pexels-photo-1769342.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=1200&w=800",
      :landscape=>
       "https://images.pexels.com/photos/1769342/pexels-photo-1769342.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=627&w=1200",
      :tiny=>
       "https://images.pexels.com/photos/1769342/pexels-photo-1769342.jpeg?auto=compress&cs=tinysrgb&dpr=1&fit=crop&h=200&w=280"},
    :liked=>false},
   {:id=>1563256,
    :width=>2642,
    :height=>3419,
    :url=>"https://www.pexels.com/photo/person-walking-on-the-road-1563256/",
    :photographer=>"Ricardo Esquivel",
    :photographer_url=>"https://www.pexels.com/@rickyrecap",
    :photographer_id=>722822,
    :src=>
     {:original=>"https://images.pexels.com/photos/1563256/pexels-photo-1563256.jpeg",
      :large2x=>"https://images.pexels.com/photos/1563256/pexels-photo-1563256.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
      :large=>"https://images.pexels.com/photos/1563256/pexels-photo-1563256.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
      :medium=>"https://images.pexels.com/photos/1563256/pexels-photo-1563256.jpeg?auto=compress&cs=tinysrgb&h=350",
      :small=>"https://images.pexels.com/photos/1563256/pexels-photo-1563256.jpeg?auto=compress&cs=tinysrgb&h=130",
      :portrait=>"https://images.pexels.com/photos/1563256/pexels-photo-1563256.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=1200&w=800",
      :landscape=>
       "https://images.pexels.com/photos/1563256/pexels-photo-1563256.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=627&w=1200",
      :tiny=>
       "https://images.pexels.com/photos/1563256/pexels-photo-1563256.jpeg?auto=compress&cs=tinysrgb&dpr=1&fit=crop&h=200&w=280"},
    :liked=>false},
   {:id=>5362093,
    :width=>5617,
    :height=>3745,
    :url=>"https://www.pexels.com/photo/modern-city-district-with-skyscrapers-near-green-lawn-5362093/",
    :photographer=>"Ricardo Esquivel",
    :photographer_url=>"https://www.pexels.com/@rickyrecap",
    :photographer_id=>722822,
    :src=>
     {:original=>"https://images.pexels.com/photos/5362093/pexels-photo-5362093.jpeg",
      :large2x=>"https://images.pexels.com/photos/5362093/pexels-photo-5362093.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
      :large=>"https://images.pexels.com/photos/5362093/pexels-photo-5362093.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
      :medium=>"https://images.pexels.com/photos/5362093/pexels-photo-5362093.jpeg?auto=compress&cs=tinysrgb&h=350",
      :small=>"https://images.pexels.com/photos/5362093/pexels-photo-5362093.jpeg?auto=compress&cs=tinysrgb&h=130",
      :portrait=>"https://images.pexels.com/photos/5362093/pexels-photo-5362093.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=1200&w=800",
      :landscape=>
       "https://images.pexels.com/photos/5362093/pexels-photo-5362093.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=627&w=1200",
      :tiny=>
       "https://images.pexels.com/photos/5362093/pexels-photo-5362093.jpeg?auto=compress&cs=tinysrgb&dpr=1&fit=crop&h=200&w=280"},
    :liked=>false},
   {:id=>1722183,
    :width=>4000,
    :height=>6000,
    :url=>"https://www.pexels.com/photo/sears-tower-usa-1722183/",
    :photographer=>"Cameron Casey",
    :photographer_url=>"https://www.pexels.com/@camcasey",
    :photographer_id=>455136,
    :src=>
     {:original=>"https://images.pexels.com/photos/1722183/pexels-photo-1722183.jpeg",
      :large2x=>"https://images.pexels.com/photos/1722183/pexels-photo-1722183.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
      :large=>"https://images.pexels.com/photos/1722183/pexels-photo-1722183.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
      :medium=>"https://images.pexels.com/photos/1722183/pexels-photo-1722183.jpeg?auto=compress&cs=tinysrgb&h=350",
      :small=>"https://images.pexels.com/photos/1722183/pexels-photo-1722183.jpeg?auto=compress&cs=tinysrgb&h=130",
      :portrait=>"https://images.pexels.com/photos/1722183/pexels-photo-1722183.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=1200&w=800",
      :landscape=>
       "https://images.pexels.com/photos/1722183/pexels-photo-1722183.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=627&w=1200",
      :tiny=>
       "https://images.pexels.com/photos/1722183/pexels-photo-1722183.jpeg?auto=compress&cs=tinysrgb&dpr=1&fit=crop&h=200&w=280"},
    :liked=>false},
   {:id=>2362004,
    :width=>5242,
    :height=>6553,
    :url=>"https://www.pexels.com/photo/aerial-photo-of-cityscape-at-night-2362004/",
    :photographer=>"Benjamin Suter",
    :photographer_url=>"https://www.pexels.com/@benjaminjsuter",
    :photographer_id=>1166597,
    :src=>
     {:original=>"https://images.pexels.com/photos/2362004/pexels-photo-2362004.jpeg",
      :large2x=>"https://images.pexels.com/photos/2362004/pexels-photo-2362004.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
      :large=>"https://images.pexels.com/photos/2362004/pexels-photo-2362004.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
      :medium=>"https://images.pexels.com/photos/2362004/pexels-photo-2362004.jpeg?auto=compress&cs=tinysrgb&h=350",
      :small=>"https://images.pexels.com/photos/2362004/pexels-photo-2362004.jpeg?auto=compress&cs=tinysrgb&h=130",
      :portrait=>"https://images.pexels.com/photos/2362004/pexels-photo-2362004.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=1200&w=800",
      :landscape=>
       "https://images.pexels.com/photos/2362004/pexels-photo-2362004.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=627&w=1200",
      :tiny=>
       "https://images.pexels.com/photos/2362004/pexels-photo-2362004.jpeg?auto=compress&cs=tinysrgb&dpr=1&fit=crop&h=200&w=280"},
    :liked=>false},
   {:id=>3617460,
    :width=>4000,
    :height=>5000,
    :url=>"https://www.pexels.com/photo/cars-on-road-between-high-rise-buildings-3617460/",
    :photographer=>"Benjamin Suter",
    :photographer_url=>"https://www.pexels.com/@benjaminjsuter",
    :photographer_id=>1166597,
    :src=>
     {:original=>"https://images.pexels.com/photos/3617460/pexels-photo-3617460.jpeg",
      :large2x=>"https://images.pexels.com/photos/3617460/pexels-photo-3617460.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
      :large=>"https://images.pexels.com/photos/3617460/pexels-photo-3617460.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
      :medium=>"https://images.pexels.com/photos/3617460/pexels-photo-3617460.jpeg?auto=compress&cs=tinysrgb&h=350",
      :small=>"https://images.pexels.com/photos/3617460/pexels-photo-3617460.jpeg?auto=compress&cs=tinysrgb&h=130",
      :portrait=>"https://images.pexels.com/photos/3617460/pexels-photo-3617460.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=1200&w=800",
      :landscape=>
       "https://images.pexels.com/photos/3617460/pexels-photo-3617460.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=627&w=1200",
      :tiny=>
       "https://images.pexels.com/photos/3617460/pexels-photo-3617460.jpeg?auto=compress&cs=tinysrgb&dpr=1&fit=crop&h=200&w=280"},
    :liked=>false},
   {:id=>1662159,
    :width=>3769,
    :height=>4711,
    :url=>"https://www.pexels.com/photo/high-rise-building-1662159/",
    :photographer=>"Ricardo Esquivel",
    :photographer_url=>"https://www.pexels.com/@rickyrecap",
    :photographer_id=>722822,
    :src=>
     {:original=>"https://images.pexels.com/photos/1662159/pexels-photo-1662159.jpeg",
      :large2x=>"https://images.pexels.com/photos/1662159/pexels-photo-1662159.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
      :large=>"https://images.pexels.com/photos/1662159/pexels-photo-1662159.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
      :medium=>"https://images.pexels.com/photos/1662159/pexels-photo-1662159.jpeg?auto=compress&cs=tinysrgb&h=350",
      :small=>"https://images.pexels.com/photos/1662159/pexels-photo-1662159.jpeg?auto=compress&cs=tinysrgb&h=130",
      :portrait=>"https://images.pexels.com/photos/1662159/pexels-photo-1662159.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=1200&w=800",
      :landscape=>
       "https://images.pexels.com/photos/1662159/pexels-photo-1662159.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=627&w=1200",
      :tiny=>
       "https://images.pexels.com/photos/1662159/pexels-photo-1662159.jpeg?auto=compress&cs=tinysrgb&dpr=1&fit=crop&h=200&w=280"},
    :liked=>false},
   {:id=>2093323,
    :width=>6000,
    :height=>3376,
    :url=>"https://www.pexels.com/photo/bird-s-eye-view-of-city-during-dawn-2093323/",
    :photographer=>"Chait Goli",
    :photographer_url=>"https://www.pexels.com/@chaitaastic",
    :photographer_id=>876963,
    :src=>
     {:original=>"https://images.pexels.com/photos/2093323/pexels-photo-2093323.jpeg",
      :large2x=>"https://images.pexels.com/photos/2093323/pexels-photo-2093323.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
      :large=>"https://images.pexels.com/photos/2093323/pexels-photo-2093323.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
      :medium=>"https://images.pexels.com/photos/2093323/pexels-photo-2093323.jpeg?auto=compress&cs=tinysrgb&h=350",
      :small=>"https://images.pexels.com/photos/2093323/pexels-photo-2093323.jpeg?auto=compress&cs=tinysrgb&h=130",
      :portrait=>"https://images.pexels.com/photos/2093323/pexels-photo-2093323.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=1200&w=800",
      :landscape=>
       "https://images.pexels.com/photos/2093323/pexels-photo-2093323.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=627&w=1200",
      :tiny=>
       "https://images.pexels.com/photos/2093323/pexels-photo-2093323.jpeg?auto=compress&cs=tinysrgb&dpr=1&fit=crop&h=200&w=280"},
    :liked=>false},
   {:id=>161963,
    :width=>2740,
    :height=>1859,
    :url=>"https://www.pexels.com/photo/one-world-trade-center-under-cloudy-sky-during-daytime-161963/",
    :photographer=>"Pixabay",
    :photographer_url=>"https://www.pexels.com/@pixabay",
    :photographer_id=>2659,
    :src=>
     {:original=>"https://images.pexels.com/photos/161963/chicago-illinois-skyline-skyscrapers-161963.jpeg",
      :large2x=>
       "https://images.pexels.com/photos/161963/chicago-illinois-skyline-skyscrapers-161963.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
      :large=>
       "https://images.pexels.com/photos/161963/chicago-illinois-skyline-skyscrapers-161963.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
      :medium=>
       "https://images.pexels.com/photos/161963/chicago-illinois-skyline-skyscrapers-161963.jpeg?auto=compress&cs=tinysrgb&h=350",
      :small=>
       "https://images.pexels.com/photos/161963/chicago-illinois-skyline-skyscrapers-161963.jpeg?auto=compress&cs=tinysrgb&h=130",
      :portrait=>
       "https://images.pexels.com/photos/161963/chicago-illinois-skyline-skyscrapers-161963.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=1200&w=800",
      :landscape=>
       "https://images.pexels.com/photos/161963/chicago-illinois-skyline-skyscrapers-161963.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=627&w=1200",
      :tiny=>
       "https://images.pexels.com/photos/161963/chicago-illinois-skyline-skyscrapers-161963.jpeg?auto=compress&cs=tinysrgb&dpr=1&fit=crop&h=200&w=280"},
    :liked=>false}],
 :total_results=>10000,
 :next_page=>"https://api.pexels.com/v1/search/?page=2&per_page=15&query=city+of+chicago%2Cil"}
    location = 'chicago,il'

    image = Image.new(data, location)
    expect(image.location).to eq(location)
    expect(image.image_url).to be_a(String)
    expect(image.credit).to be_a(Hash)

    expect(image.credit).to have_key(:source)
    expect(image.credit[:source]).to be_a(String)

    expect(image.credit).to have_key(:author)
    expect(image.credit[:author]).to be_a(String)

    expect(image.credit).to have_key(:logo)
    expect(image.credit[:logo]).to be_a(String)



  end
end
