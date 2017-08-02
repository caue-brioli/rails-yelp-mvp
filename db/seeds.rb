# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do
  r = Restaurant.new(
    name: Faker::Company.name,
    address: Faker::Address.street_address,
    phone_number: Faker::Company.duns_number,
    category: %w(chinese italian japanese french belgian).sample
    )
  r.save
  5.times do
    v = Review.new(
      content: Faker::Lorem.sentence,
      rating: rand(1..5),
      restaurant_id: r.id
      )
    v.save
  end
end
