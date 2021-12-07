# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

50.times do
 article = Article.create!(
 	headline: Faker::Lorem.sentence,
 	content: "<h1>#{Faker::Lorem.sentence}</h1>
 	<div><string>#{Faker::Lorem.paragraphs(number: 10).join('')}
 	</string></div>"
 	)

 puts "Fake [article] [#{article.headline}]"
end