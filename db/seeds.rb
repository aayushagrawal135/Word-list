# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'json'

addr = '/home/aayush/Untitled Folder/data.json'
json_data = JSON.parse(File.read(addr))
json_data.each do |word, meaning|
  Card.create(word: word, meaning: meaning)
end
