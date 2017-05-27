User.destroy_all
Artist.destroy_all
Album.destroy_all
Song.destroy_all
Genre.destroy_all

rock = Genre.create!(name: "Rock")
alternative = Genre.create!(name: "Alternative")

artist1 = Artist.create!(name: "Sigur Ros", description: "Sigur Ros is an Icelandic band ans so on and so on")
album1 = Album.create!(name: "Takk...", artist: artist1)
song1 = Song.create!(name: "Hopippola", url:"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/266058953&amp;color=ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false", year_released: 2003, album: album1, genres: [rock])

artist2 = Artist.create!(name: "Joakim Karud", description: "Jazzy funky and so on ans so on and so on")
album2 = Album.create!(name: "Loudness and Clarity", artist: artist2)
song2 = Song.create!(name: "Great Days", url:"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/295132777&amp;color=ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false", year_released: 2016, album: album2, genres: [alternative])
