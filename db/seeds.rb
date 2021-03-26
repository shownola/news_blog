# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 5.times do |user|
#   User.create!(email: 'sherry@email.com', password: 'sherry')
# end

10.times do |article|
  Article.create!(title: "Article Title #{article}",
                  content: "Godfather ipsum dolor sit amet. When they come... they come at what you love. Te salut, Don Corleone. Leave the gun. Take the cannoli. We're both part of the same hypocrisy, senator, but never think it applies to my family.

                  It's a Sicilian message. It means Luca Brasi sleeps with the fishes. Is that why you slapped my brother around in public? Don't ever give an order like that again. Not while I'm alive. My father taught me many things here - he taught me in this room. He taught me: keep your friends close, but your enemies closer. Only don't tell me you're innocent. Because it insults my intelligence and makes me very angry."
                  category: 'Coding',
                   )
                 end
