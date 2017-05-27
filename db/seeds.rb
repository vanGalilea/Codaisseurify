User.destroy_all
Profile.destroy_all
Artist.destroy_all
Album.destroy_all
Song.destroy_all
Genre.destroy_all
Photo.destroy_all

user = User.create!(email: "z.galili@icloud.com", password: "abcd1234")

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

artist1 = Artist.create!(name: "Sigur Ros", description: "Sigur Ros is an Icelandic band ans so on and so on", photos: [photo1, photo2, photo3])
album1 = Album.create!(name: "Takk...", artist: artist1)
song1 = Song.create!(name: "Hopippola", url:"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/266058953&amp;color=ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false", year_released: 2003, album: album1, genres: [rock, ambient])

artist2 = Artist.create!(name: "Joakim Karud", description: "Jazzy funky and so on ans so on and so on", photos: [photo4, photo5, photo6])
album2 = Album.create!(name: "Loudness and Clarity", artist: artist2)
song2 = Song.create!(name: "Great Days", url:"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/295132777&amp;color=ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false", year_released: 2016, album: album2, genres: [alternative, hiphop])

artist3 = Artist.create!(name: "Foo Fighters", description: "and so on ans so on and so on", photos: [photo7, photo8, photo9])
album3 = Album.create!(name: "The Greatest Hits", artist: artist3)
song2 = Song.create!(name: "Everlong", url:"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/256067710&amp;color=ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false", year_released: 2010, album: album3, genres: [alternative, pop])

artist4 = Artist.create!(name: "Radiohead", description: "Jazzy funky and so on ans so on and so on", photos: [photo10, photo11, photo12])
album4 = Album.create!(name: "Rainbows", artist: artist4)
song4 = Song.create!(name: "These Are My Twisted Words", url:"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/291310911&amp;color=ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false", year_released: 2012, album: album4, genres: [alternative, classic])
