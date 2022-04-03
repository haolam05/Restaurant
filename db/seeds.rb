# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# User.create!(email: 'tuonghao2001@gmail.com,', password: '1q2w3e', password_confirmation: '1q2w3e', admin: true)

25.times do |n|
    Product.create!(
        name: "Pizza",
        description: "Chicken BBQ Pizza New York ...",
        price: 11.99,
        catering: true
    )
end