Genre.destroy_all 
Song.destroy_all
Artist.destroy_all
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
g1 = Genre.create(name: 'Pop')
g2 = Genre.create(name: 'Rap')
g3 = Genre.create(name: 'Trap')

a1 = Artist.create(name: 'Adele', bio: "Born in London Adele took the world by storm and stole beyonces grammy")
a2 = Artist.create(name: 'Drake', bio: "Aubrey Graham was a degrassi star from the mean streets of the 6")
a3 = Artist.create(name: 'Thugga', bio: "Courage the cowardly dog in the flesh")
s1 = Song.create(name: "Hello", artist_id: a1.id, genre_id: g1.id)
s2 = Song.create(name: "Worst", artist_id: a2.id, genre_id: g2.id)
s3 = Song.create(name: "Hot", artist_id: a3.id, genre_id: g3.id)


