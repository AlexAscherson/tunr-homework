# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Songples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Songples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Album.delete_all
Song.delete_all
AlbumSong.delete_all
Artist.delete_all

c1 = Artist.create(name:'Mathilda Thompson')
c2 = Artist.create(name:'Alex Ascherson')
c3 = Artist.create(name:'Maeve Morales')

p1 = Song.create(name: 'Ladders: 101 Song')
p2 = Song.create(name: 'Anthropology 101 song ')
p3 = Song.create(name: 'Conspiracies 101')
p4 = Song.create(name: 'Spanish 102')

# Create album objects (the artist_id column will be assigned the artist
  # id)
o1 = c1.albums.create(name: 'dont', tracks: 200)
o2 = c2.albums.create(name: 'ever', tracks: 500)
o3 = c3.albums.create(name: 'want', tracks: 300)

# you can also do (method 2)

# Album.create(album_reference: 'Spanish 101', difficulty: 70, artist_id: c1.id)

# You can also do (method 3)
o3 = Album.create(name: 'want', tracks: 300)
o3.artist_id = c1.id
o3.save

#Assign songs to albums
o1.album_songs.create(song_id: p1.id)
o1.album_songs.create(song_id: p3.id)
o3.album_songs.create(song_id: p4.id)
p1.album_songs.create(album_id: o3.id)

# # Creating a profile object and assigning it to a artist
# pr1 = Profile.create(twitter_hand: 'mathilda', email: 'mathilda@genassembly.ly')
# pr1.artist_id = c1.id
# pr1.save

# # Method 2
# pr2 = Profile.create(twitter_hand: 'john', email: 'john@genassembly.ly', artist_id: c2.id)

puts "done!"












