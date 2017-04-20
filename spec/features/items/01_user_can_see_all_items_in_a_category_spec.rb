require 'rails_helper'

RSpec.feature 'associations' do
  describe 'items' do
    it 'should have many categories' do
      sushi_socks = Item.create!(title: "socks",
                            description: "bright",
                            price: 100,
                            # item_image: "sushi_socks.jpg")
                            item_image: "https://cdn.shopify.com/s/files/1/0207/8554/products/Socksmith_Sushi_blue_socks_cool_mens_socks_large.jpg?v=1453255393")
      bacon_socks = Item.create!(title: "socks",
                            description: "bright",
                            price: 100,
                            item_image: "baconeggsocks.jpg")
      pizza_socks = Item.create!(title: "socks",
                            description: "bright",
                            price: 100,
                            item_image: "pizzasocks.jpg")
      category = Category.create(name: "Socks")
      sushi_socks.item_categories.create(category: category)
    end
  end
  context 'when a user visits a category path by name' do
    scenario 'they see all items assigned to that category' do
      sushi_socks = Item.create!(title: "socks",
                            description: "bright",
                            price: 100,
                            # item_image: "sushi_socks.jpg")
                            item_image: "https://cdn.shopify.com/s/files/1/0207/8554/products/Socksmith_Sushi_blue_socks_cool_mens_socks_large.jpg?v=1453255393")
      bacon_socks = Item.create!(title: "socks",
                            description: "bright",
                            price: 100,
                            # item_image: "baconeggsocks.jpg")
                            item_image: "https://cdn.shopify.com/s/files/1/0207/8554/products/socksmith_american_breakfast_in_blue_awesome_mens_socks_large.jpg?v=1490637444")
      pizza_socks = Item.create!(title: "socks",
                            description: "bright",
                            price: 100,
                            # item_image: "pizzasocks.jpg")
                            item_image: "https://cdn.shopify.com/s/files/1/0207/8554/products/socksmith_pizza_in_green_fun_mens_socks_large.jpg?v=1472576007")
      category = Category.create(name: "Socks")
      sushi_socks.item_categories.create(category: category)
      bacon_socks.item_categories.create(category: category)
      pizza_socks.item_categories.create(category: category)

      visit '/socks'
      expect(page).to have_content(sushi_socks.title)
      expect(page).to have_content(bacon_socks.title)
      expect(page).to have_content(pizza_socks.title)
      save_and_open_page
    end
  end
end
