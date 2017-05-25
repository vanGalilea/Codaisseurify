User.destroy_all
Artist.destroy_all


artist1 = Artist.create!(name: "Sigur Ros", description: "Sigur Ros is an Icelandic band ans so on and so on")

song = Song.create!(name: "Hopippola", url:"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/266058953&amp;color=ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false", year_released: 2003, artist: artist1)
