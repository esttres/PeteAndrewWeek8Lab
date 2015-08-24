# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

50.times do
  product = Product.create(name: Faker::Commerce.product_name,
                  price: Faker::Commerce.price*100,
                  permalink:  Faker::Internet.slug(
                              Faker::Lorem.words(4), '-'),
                  description: Faker::Lorem.sentence(3))
  end

50.times do
  seller = Seller.create(first_name: Faker::Name.first_name,
                  last_name: Faker::Name.last_name,
                  company_name: Faker::Company.name)
  end
