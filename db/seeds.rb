# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Product.delete_all
Product.create!(name: 'Apple', description: %{Farm apple}, image: 'apple.jpg', price: 0.64, category: 'fruits')
Product.create!(name: 'Banana', description: %{organic banana}, image:'banana.jpg', price: 0.51, category: 'fruits')
Product.create!(name: 'Strawberry', description: %{organic Strawberry}, image:'strawberry.jpg', price: 4.12, category: 'fruits')

Product.create!(name: 'Carrot', description: %{Fresh Whole Carrot}, image: 'carrot.jpg', price: 1.00, category: 'vegetables')
Product.create!(name: 'Onion', description: %{Jumbo Red Onion}, image:'onion.jpg', price: 0.94, category: 'vegetables')
Product.create!(name: 'Tomato', description: %{Fresh Roma Tomato}, image:'tomato.jpg', price: 3.25, category: 'vegetables')

Product.create!(name: 'Milk', description: %{Whole Vitamin D Milk}, image: 'milk.jpg', price: 3.56, category: 'dairy_and_egg')
Product.create!(name: 'Eggs', description: %{Cage Free Eggs}, image:'eggs.jpg', price: 3.48, category: 'dairy_and_egg')
Product.create!(name: 'Cheese', description: %{Original cream cheese}, image:'cheese.jpg', price: 4.30, category: 'dairy_and_egg')

Product.create!(name: 'Chips', description: %{Cheetos puff cheese}, image: 'cheetos.jpg', price: 4.48, category: 'snacks')
Product.create!(name: 'Cookie', description: %{Choco chip cookies}, image:'cookie.jpg', price: 4.60, category: 'snacks')
Product.create!(name: 'Popcorn', description: %{Butter popcorn}, image:'popcorn.jpg', price: 4.12, category: 'snacks')

Product.create!(name: 'Ferrero Rocher', description: %{Premium milk chocolate hazelnut}, image: 'ferrero.jpg', price: 6.48, category: 'candy')
Product.create!(name: 'Lindt', description: %{Chocolate candy truffles}, image:'lindt.jpg', price: 7.18, category: 'candy')
Product.create!(name: 'Sour Patch Kids', description: %{Assorted soft candy}, image:'sour_patch.jpg', price: 4.18, category: 'candy')

Product.create!(name: 'Tres leches cake', description: %{Fresh soft bakery sliced}, image: 'cake.jpg', price: 5.15, category: 'bread')
Product.create!(name: 'Donuts', description: %{Fresh, creme filled, chocolate glazed}, image:'donut.jpg', price: 1.97, category: 'bread')


admin = User.create!(email: 'admin7@gmail.com', password: 'adminv96', password_confirmation: 'adminv96')