# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
Song.destroy_all
Artist.destroy_all

songs = [{artist_name: "The Killers", title: "Mr. Brightside"},
         {artist_name: "The Killers", title: "Jenny Was a Friend of Mine"},
         {artist_name: "Tommy Tutone", title: "Jenny"},
         {artist_name: "Daft Punk", title: "Around the World"},
         {artist_name: "Daft Punk", title: "Harder, Better, Faster, Stronger"},
         {artist_name: "Pixies", title: "Where is My Mind?"},
         {artist_name: "Pixies", title: "Gigantic"},
         {artist_name: "Pixies", title: "Monkey Gone to Heaven"}]

songs.each do |song|
  Song.create(song)
end
AdminUser.create!(email: 'admi1n@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

AdminUser.create!(email: 'lqf2b9@gmail.com', password: 'stuffstuff', password_confirmation: 'stuffstuff') if Rails.env.development?
