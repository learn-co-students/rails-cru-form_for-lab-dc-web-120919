# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Artist.destroy_all
Genre.destroy_all
Song.destroy_all 

hw = Artist.create(name: "Hank Williams", bio: "short bio")
mj = Artist.create(name: "Michael Jackson", bio: "longer bio")

pop = Genre.create(name: "Pop")
country = Genre.create(name: "Country")

song1 = Song.create(name: "Smooth Criminal")
song1.genre = pop 
song1.artist = mj 
song1.save

song2 = Song.create(name: "Jambalaya")
song2.genre = country 
song2.artist = hw 
song2.save

song3 = Song.create(name: "Billie Jean", artist: mj, genre: pop)