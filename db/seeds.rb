# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 100.times do
#   restaurant = Restaurant.new(
#     name:    Faker::Commerce.product_name,
#     address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
#     phone_number: Faker::PhoneNumber.phone_number,
#     category: ["chinese", "italian", "japanese", "french", "belgian"].sample
#   )
#   restaurant.save!
# end

1000.times do
  review = Review.new(
    content: Faker::ChuckNorris.fact,
    rating: [0, 1, 2, 3, 4, 5].sample,
    restaurant: Restaurant.all.sample
  )
  review.save!
end
