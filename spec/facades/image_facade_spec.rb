require 'rails_helper'

describe ImageFacade do
  context 'class methods' do
    it 'returns a hash of images by city' do
      image = ImageFacade.find_image('chicago,il')

      expect(image.credit).to be_a(Hash)
      expect(image.credit).to have_key(:source)
      expect(image.credit[:source]).to be_a(String)

      expect(image.credit).to have_key(:author)
      expect(image.credit[:author]).to be_a(String)

      expect(image.credit).to have_key(:logo)
      expect(image.credit[:logo]).to be_a(String)

      expect(image.image_url).to be_a(String)

      expect(image.location).to eq('chicago,il')

    end
  end
end
