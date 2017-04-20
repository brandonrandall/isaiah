require 'rails_helper'

RSpec.feature 'item has spicifics uch as title,
                                        description,
                                        price,
                                        image and categories' do
  context 'when a visitor visits the items path' do
    scenario 'they can see all existing items' do
      socks = Item.create!(title: "socks",
                            description: "bright",
                            price: 100,
                            item_image: "https://cdn.shopify.com/s/files/1/0207/8554/products/Socksmith_Sushi_blue_socks_cool_mens_socks_large.jpg?v=1453255393")
      jerseys = Item.create!(title: "bright socks",
                            description: "broncos",
                            price: 300,
                            item_image: "http://nflshop.frgimages.com/FFImage/thumb.aspx?i=/productImages/_825000/ff_825397_xl.jpg&w=340")
      shoes = Item.create!(title: "bright socks",
                            description: "nike",
                            price: 200,
                            item_image: "http://i.ebayimg.com/00/s/MjM2WDMxNQ==/z/USIAAOSwARZXoNRR/$_57.JPG?set_id=80000000000")
      visit "/items"
      expect(page).to have_content(100)
      # expect(page).to have_content(200)
      # expect(page).to have_content(300)
    end
  end
end
