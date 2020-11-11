require 'rails_helper'

describe MapService do
  context 'class methods' do
    it 'find_long_lat' do
      data = 'chicago,il'
      map_service = MapService.find_long_lat(data)

      expect(map_service).to be_a(Hash)
      expect(map_service).to have_key(:info)
      expect(map_service[:info]).to be_a(Hash)

      info = map_service[:info]
      expect(info).to have_key(:statuscode)
      expect(info[:statuscode]).to be_an(Integer)

      expect(info).to have_key(:copyright)
      expect(info[:copyright]).to be_an(Hash)

      options = map_service[:options]
      expect(options).to have_key(:maxResults)
      expect(options[:maxResults]).to be_an(Integer)

      expect(options).to have_key(:thumbMaps)
      expect(options[:thumbMaps]).to eq(true).or eq(false)

      result = map_service[:results][0]

      expect(result).to have_key(:providedLocation)
      expect(result[:providedLocation]).to be_a(Hash)

      expect(result).to have_key(:locations)
      expect(result[:locations]).to be_a(Array)
    end

    it 'find_distance' do
      latlng = "36.4632,-82.1808"
      initial_location = "erwin, tn"
      distance_response = MapService.find_distance(latlng, initial_location)

      expect(distance_response).to be_a(Hash)
      expect(distance_response).to have_key(:allToAll)
      expect(distance_response[:allToAll]).to eq(false).or eq(true)

      expect(distance_response).to have_key(:distance)
      expect(distance_response[:distance]).to be_an(Array)

      expect(distance_response).to have_key(:locations)
      expect(distance_response[:locations]).to be_an(Array)

      expect(distance_response).to have_key(:time)
      expect(distance_response[:time]).to be_an(Array)

      expect(distance_response).to have_key(:manyToOne)
      expect(distance_response[:manyToOne]).to eq(false).or eq(true)

      expect(distance_response).to have_key(:info)
      expect(distance_response[:info]).to be_an(Hash)

    end
  end
end
