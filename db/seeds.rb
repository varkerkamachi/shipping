# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Product.create(
  [
    {name: 'Best product', description: 'This is the best product.', width: "24ft", length: "12ft", height: 5, weight: 24, value: 4.5 },
    {name: 'Super product', description: 'This is the super product.', width: "3yd", length: "5ft", height: 12, weight: 24, value: 90.5 },
    {name: 'Regular product', description: 'This is a regular product.', width: "6ft", length: "28ft", height: 15, weight: 4, value: 22.12 }
  ]
  )