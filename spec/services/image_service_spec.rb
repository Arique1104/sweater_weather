require 'rails_helper'

describe ImageService do
  context 'class methods' do
    it 'returns images of chicago' do
      data = 'chicago,il'
      images = ImageService.find_image(data)

      expect(images).to be_a(Hash)
      expect(images[:photos]).to be_an(Array)
      expect(images[:photos].count).to eq(15)

      one_image = images[:photos][0]
      expect(one_image).to have_key(:id)
      expect(one_image[:id]).to be_an(Integer)

      expect(one_image).to have_key(:width)
      expect(one_image[:width]).to be_an(Integer)

      expect(one_image).to have_key(:height)
      expect(one_image[:height]).to be_an(Integer)

      expect(one_image).to have_key(:url)
      expect(one_image[:url]).to be_a(String)

      expect(one_image).to have_key(:photographer)
      expect(one_image[:photographer]).to be_a(String)

      expect(one_image).to have_key(:photographer_url)
      expect(one_image[:photographer_url]).to be_a(String)

      expect(one_image).to have_key(:photographer_id)
      expect(one_image[:photographer_id]).to be_an(Integer)

      expect(one_image).to have_key(:src)
      expect(one_image[:src]).to be_a(Hash)
      expect(one_image).to have_key(:liked)
      expect(one_image[:liked]).to eq(true).or eq(false)

      source = one_image[:src]

      expect(source).to have_key(:original)
      expect(source[:original]).to be_a(String)

      expect(source).to have_key(:large2x)
      expect(source[:large2x]).to be_a(String)

      expect(source).to have_key(:large)
      expect(source[:large]).to be_a(String)

      expect(source).to have_key(:medium)
      expect(source[:medium]).to be_a(String)

      expect(source).to have_key(:small)
      expect(source[:small]).to be_a(String)

      expect(source).to have_key(:portrait)
      expect(source[:portrait]).to be_a(String)

      expect(source).to have_key(:landscape)
      expect(source[:landscape]).to be_a(String)

      expect(source).to have_key(:tiny)
      expect(source[:tiny]).to be_a(String)
    end
  end
end
