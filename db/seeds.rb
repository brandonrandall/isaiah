# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
sushi_socks = Item.create!(title: "socks",
                      description: "bright",
                      price: 100,
                      item_image: "sushi_socks.jpg")
                      # item_image: "https://cdn.shopify.com/s/files/1/0207/8554/products/Socksmith_Sushi_blue_socks_cool_mens_socks_large.jpg?v=1453255393")
bacon_socks = Item.create!(title: "socks",
                      description: "bright",
                      price: 100,
                      item_image: "baconeggsocks.jpg")
                      # item_image: "https://cdn.shopify.com/s/files/1/0207/8554/products/Socksmith_Sushi_blue_socks_cool_mens_socks_large.jpg?v=1453255393")
pizza_socks = Item.create!(title: "socks",
                      description: "bright",
                      price: 100,
                      item_image: "pizzasocks.jpg")
                      # item_image: "https://cdn.shopify.com/s/files/1/0207/8554/products/Socksmith_Sushi_blue_socks_cool_mens_socks_large.jpg?v=1453255393")
broncos_jersey = Item.create!(title: "von miller jersey",
                      description: "broncos",
                      price: 300,
                      item_image: "http://nflshop.frgimages.com/FFImage/thumb.aspx?i=/productImages/_825000/ff_825397_xl.jpg&w=340")
shoes = Item.create!(title: "jordan 7's",
                      description: "nike",
                      price: 200,
                      item_image: "http://i.ebayimg.com/00/s/MjM2WDMxNQ==/z/USIAAOSwARZXoNRR/$_57.JPG?set_id=80000000000")
socks  = Category.create(name: "Socks")
shirts  = Category.create(name: "Shirts")
shoes  = Category.create(name: "Shoes")
