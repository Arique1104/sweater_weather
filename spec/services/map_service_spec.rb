require 'rails_helper'

describe MapService do
  context 'class methods' do
    it 'returns data to process into longitude and latitude' do
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
  end
end
