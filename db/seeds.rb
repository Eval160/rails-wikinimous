# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "faker"
puts "Destroy all articles"
Article.destroy_all

puts "Create 10 articles"
10.times do
  title = Faker::Lorem.sentence(word_count: 3, supplemental: false, random_words_to_add: 5)
  content = Faker::Lorem.paragraph(sentence_count: 5, supplemental: false, random_sentences_to_add: 10)
  new_article = Article.new(title: title, content: content)
  new_article.save!
end

puts "Finish!"
