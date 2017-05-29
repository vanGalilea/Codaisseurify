
user = User.create!(email: "user@user.com", password: "abcd1234")

profile = Profile.create!(first_name: "Steve", last_name: "Galili", bio: "about me", user: user)

photo1 = Photo.create(remote_image_url: "http://res.cloudinary.com/dqmqi1nxq/image/upload/v1495881541/1200px-Sigur_R_C3_B3s_2013_qoaulv.jpg")
photo2 = Photo.create(remote_image_url: "http://res.cloudinary.com/dqmqi1nxq/image/upload/v1495881596/england-iceland-euro-2016-sigur-ros-quiz_c8ejij.jpg")
photo3 = Photo.create(remote_image_url: "http://res.cloudinary.com/dqmqi1nxq/image/upload/v1495881622/sigur_ros_wallpaper_2_by_trees_in_the_sea-d3a2nmk_lbytac.jpg")

photo4 = Photo.create(remote_image_url: "http://res.cloudinary.com/dqmqi1nxq/image/upload/v1495881646/artworks-000191403250-k2zu67-t500x500_ajtenl.jpg")
photo5 = Photo.create(remote_image_url: "http://res.cloudinary.com/dqmqi1nxq/image/upload/v1495881687/maxresdefault_tivdig.jpg")
photo6 = Photo.create(remote_image_url: "http://res.cloudinary.com/dqmqi1nxq/image/upload/v1495881708/artworks-000211157103-5hi3w5-t500x500_vzymim.jpg")

photo7 = Photo.create(remote_image_url: "http://res.cloudinary.com/dqmqi1nxq/image/upload/v1495881774/2015FooFighters_EM__017140115_ggruvw.jpg")
photo8 = Photo.create(remote_image_url: "http://res.cloudinary.com/dqmqi1nxq/image/upload/v1495881785/1200px-Foo_Fighters_2007_v7cbyz.jpg")
photo9 = Photo.create(remote_image_url: "http://res.cloudinary.com/dqmqi1nxq/image/upload/v1495881827/MI0003343534_yzjuy2.jpg")

photo10 = Photo.create(remote_image_url: "http://res.cloudinary.com/dqmqi1nxq/image/upload/v1495881937/radiohead_mg96rl.jpg")
photo11 = Photo.create(remote_image_url: "http://res.cloudinary.com/dqmqi1nxq/image/upload/v1495881912/radiohead-FB-OG_whnu6t.jpg")
photo12 = Photo.create(remote_image_url: "http://res.cloudinary.com/dqmqi1nxq/image/upload/v1495881990/b5616cf4fb8f4355984eadd307394ea4_uktwxr.jpg")

rock = Genre.create!(name: "Rock")
alternative = Genre.create!(name: "Alternative")
acoustic = Genre.create!(name: "Acoustic")
pop = Genre.create!(name: "Pop")
hiphop = Genre.create!(name: "Hip-hop")
classic = Genre.create!(name: "Classic")
funk = Genre.create!(name: "Funk")
ambient = Genre.create!(name: "Ambient")

artist1 = Artist.create!(name: "Sigur Rós", description: "Sigur Rós (Icelandic pronunciation: [ˈsɪːɣʏr ˈroːus] ( listen)[7]) is an Icelandic post-rock band from Reykjavík, who have been active since 1994. Known for their ethereal sound, frontman Jónsi's falsetto vocals, and the use of bowed guitar,[8] the band's music is also noticeable for its incorporation of classical and minimalist aesthetic elements. The band is named after Jónsi's sister Sigurrós Elín.[9]", photos: [photo1, photo2, photo3])
album1 = Album.create!(name: "Takk...", artist: artist1)
album5 = Album.create!(name: "Med Sud í Eyrum Vid Spilum Endalaust ", artist: artist1)

song1 = Song.create!(name: "Hopippola", url:"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/266058953&amp;color=ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false", year_released: 2003, album: album1, genres: [rock, ambient])
song5 = Song.create!(name: "Inní mér syngur vitleysingur", url:"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/256140484&amp;color=ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false", year_released: 2003, album: album5, genres: [rock, ambient])
song6 = Song.create!(name: "Glósóli", url:"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/266056919&amp;color=ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false", year_released: 2003, album: album1, genres: [rock, classic])
song6 = Song.create!(name: "Andvari", url:"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/256140569&amp;color=ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false", year_released: 2003, album: album1, genres: [rock, classic])

artist2 = Artist.create!(name: "Joakim Karud", description: "Jazzy funky and In tegenstelling tot wat algemeen aangenomen wordt is Lorem Ipsum niet zomaar willekeurige tekst. het heeft zijn wortels in een stuk klassieke latijnse literatuur uit 45 v.Chr. en is dus meer dan 2000 jaar oud. Richard McClintock", photos: [photo4, photo5, photo6])
album2 = Album.create!(name: "Loudness and Clarity", artist: artist2)
album6 = Album.create!(name: "Dizzy Compilation", artist: artist2)
song2 = Song.create!(name: "Great Days", url:"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/295132777&amp;color=ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false", year_released: 2016, album: album2, genres: [alternative, hiphop])
song7 = Song.create!(name: "Vacation", url:"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/269636436&amp;color=ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false", year_released: 2016, album: album6, genres: [alternative, hiphop])
song8 = Song.create!(name: "Wild Flower", url:"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/250453210&amp;color=ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false", year_released: 2016, album: album6, genres: [alternative, hiphop])

artist3 = Artist.create!(name: "Foo Fighters", description: "Foo Fighters is an American rock band, formed in Seattle, Washington in 1994. It was founded by Nirvana drummer Dave Grohl as a one-man project following the dissolution of Nirvana after the death of Kurt Cobain. The group got its name from the UFOs and various aerial phenomena that were reported by Allied aircraft pilots in World War II, which were known collectively as foo fighters.", photos: [photo7, photo8, photo9])
album3 = Album.create!(name: "The Greatest Hits", artist: artist3)
song9 = Song.create!(name: "Everlong", url:"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/256067710&amp;color=ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false", year_released: 2010, album: album3, genres: [alternative, pop])
song10 = Song.create!(name: "The pretender", url:"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/117723710&amp;color=ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false", year_released: 2015, album: album3, genres: [alternative, pop])
song11 = Song.create!(name: "Learn to Fly", url:"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/166919134&amp;color=ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false", year_released: 2010, album: album3, genres: [alternative, pop])

artist4 = Artist.create!(name: "Radiohead", description: "Radiohead are an English rock band from Abingdon, Oxfordshire, formed in 1985. The band consists of Thom Yorke (lead vocals, guitar, piano, keyboards), Jonny Greenwood (lead guitar, keyboards, other instruments), Ed O'Brien (guitar, backing vocals), Colin Greenwood (bass), and Phil Selway (drums, percussion, backing vocals). They have worked with producer Nigel Godrich and cover artist Stanley Donwood since 1994.", photos: [photo10, photo11, photo12])
album4 = Album.create!(name: "Rainbows", artist: artist4)
song4 = Song.create!(name: "These Are My Twisted Words", url:"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/291310911&amp;color=ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false", year_released: 2012, album: album4, genres: [alternative, classic])
song12 = Song.create!(name: "TJigsaw Falling Into Place", url:"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/268859321&amp;color=ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false", year_released: 2009, album: album4, genres: [alternative, classic])
song13 = Song.create!(name: "Reckoner", url:"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/268859306&amp;color=ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false", year_released: 2012, album: album4, genres: [alternative, classic])

Favourite.create(song: song4, profile: profile)
Favourite.create(song: song8, profile: profile)
