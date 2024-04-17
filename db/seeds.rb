#========================
# SONGS
#========================

tmp_dir = Rails.root.join("public")


rock = Category.create(name: "Rock")
rock.image.attach(io: File.open("#{tmp_dir}/seed_files/rock.jpg"), filename: "rock.jpg")

blues = Category.create(name: "Blues")
blues.image.attach(io: File.open("#{tmp_dir}/seed_files/blues.png"), filename: "blues.png")

country = Category.create(name: "Country")
country.image.attach(io: File.open("#{tmp_dir}/seed_files/country.jpg"), filename: "country.jpg")

# jazz = Category.create(name: "Jazz")
# jazz.image.attach(io: File.open("#{tmp_dir}/seed_files/jazz.jpg"), filename: "jazz.jpg")


# ROCK
# ROCK1
emily_blackouts = Artist.create(name: "Emily_Blackouts")
emily_blackouts.photo.attach(io: File.open("#{tmp_dir}/seed_files/Rock/rock1/capa.jpg"), filename: "capa.jpg")

black = emily_blackouts.albums.create(title: "Black", date: Time.strptime("18/05/2015", "%d/%m/%Y"), category: rock)
black.cover.attach(io: File.open("#{tmp_dir}/seed_files/Rock/rock1/capa.jpg"), filename: "capa.jpg")

talk_to_me = black.songs.create(title: "Talk to Me", played_count: Random.rand(1000))
talk_to_me.file.attach(io: File.open("#{tmp_dir}/seed_files/Rock/rock1/Talk_to_Me.mp3"), filename: "Talk_to_Me.mp3")
slam_into_me = black.songs.create(title: "Slam Into Me", played_count: Random.rand(1000))
slam_into_me.file.attach(io: File.open("#{tmp_dir}/seed_files/Rock/rock1/Slam_Into_Me.mp3"), filename: "Slam_Into_Me.mp3")

# ROCK2
metal_butterflies = Artist.create(name: "Metal Butterflies")
metal_butterflies.photo.attach(io: File.open("#{tmp_dir}/seed_files/Rock/rock2/capa.jpg"), filename: "capa.jpg")

metal = metal_butterflies.albums.create(title: "Metal", date: Time.strptime("07/01/2008", "%d/%m/%Y"), category: rock)
metal.cover.attach(io: File.open("#{tmp_dir}/seed_files/Rock/rock2/capa.jpg"), filename: "capa.jpg")

stay_up = metal.songs.create(title: "Stay up", played_count: Random.rand(1000))
stay_up.file.attach(io: File.open("#{tmp_dir}/seed_files/Rock/rock2/stay_up.mp3"), filename: "stay_up.mp3")
start_again = metal.songs.create(title: "Start again", played_count: Random.rand(1000))
start_again.file.attach(io: File.open("#{tmp_dir}/seed_files/Rock/rock2/start_again.mp3"), filename: "start_again.mp3")


# BLUES

brazil_blues = Artist.create(name: "Brazil Blues")
brazil_blues.photo.attach(io: File.open("#{tmp_dir}/seed_files/Blues/blues1/capa.jpg"), filename: "capa.jpg")

Bluesbr = brazil_blues.albums.create(title: "Blues", date: Time.strptime("29/07/2013", "%d/%m/%Y"), category: blues)
Bluesbr.cover.attach(io: File.open("#{tmp_dir}/seed_files/Blues/blues1/capa.jpg"), filename: "capa.jpg")

travel_to_brasilia = Bluesbr.songs.create(title: "Travels to Brasilia", played_count: Random.rand(1000))
travel_to_brasilia.file.attach(io: File.open("#{tmp_dir}/seed_files/Blues/blues1/travels_to_brasilia.mp3"), filename: "travels_to_brasilia.mp3")
requiem_por_amazonia = Bluesbr.songs.create(title: "Requiem por Amazonia", played_count: Random.rand(1000))
requiem_por_amazonia.file.attach(io: File.open("#{tmp_dir}/seed_files/Blues/blues1/requiem.mp3"), filename: "requiem.mp3")


# COUNTRY

saint_anyway = Artist.create(name: "Saint Anyway")
saint_anyway.photo.attach(io: File.open("#{tmp_dir}/seed_files/Country/country1/capa.jpg"), filename: "capa.jpg")

live = saint_anyway.albums.create(title: "Live in Duluth", date: Time.strptime("29/07/2013", "%d/%m/%Y"), category: country)
live.cover.attach(io: File.open("#{tmp_dir}/seed_files/Country/country1/capa.jpg"), filename: "capa.jpg")

trouble = live.songs.create(title: "Trouble and worry", played_count: Random.rand(1000))
trouble.file.attach(io: File.open("#{tmp_dir}/seed_files/Country/country1/trouble_and _worry.mp3"), filename: "trouble_and _worry.mp3")
music_wont = live.songs.create(title: "The music wont stop", played_count: Random.rand(1000))
music_wont.file.attach(io: File.open("#{tmp_dir}/seed_files/Country/country1/the_music_wont_stop.mp3"), filename: "the_music_wont_stop.mp3")

# # JAZZ
#
# jazz_me = Artist.create(name: "Jazz Me Up")
# jazz_me.photo.attach(io: File.open("#{tmp_dir}/seed_files/Jazz/jazz1/capa.jpg"), filename: "capa.jpg")
#
# live_jazz = jazz_me.albums.create(title: "We were",  date: Time.strptime("17/05/2011", "%d/%m/%Y"), category: jazz)
# live_jazz.cover.attach(io: File.open("#{tmp_dir}/seed_files/Jazz/jazz1/capa.jpg"), filename: "capa.jpg")
#
# we_were = live_jazz.songs.create(title: "We were", played_count: Random.rand(1000))
# we_were.file.attach(io: File.open("#{tmp_dir}/seed_files/Jazz/jazz1/we_were.mp3"), filename: "we_were.mp3")
# turn_it = live_jazz.songs.create(title: "Turn it around", played_count: Random.rand(1000))
# turn_it.file.attach(io: File.open("#{tmp_dir}/seed_files/Jazz/jazz1/turn_it_around.mp3"), filename: "turn_it_around.mp3")


#========================
# USERS
#========================

freddie_mercury = User.create(name: "Freddie Mercury", email: "freddie@mercury.com", password: "123456", password_confirmation: "123456")
freddie_mercury.favorites.create(favoritable: travel_to_brasilia)
freddie_mercury.recently_heards.create(album: live)
freddie_mercury.recently_heards.create(album: metal)


diana_ross = User.create(name: "Diana Ross", email: "diana@ross.com", password: "123456", password_confirmation: "123456")
diana_ross.favorites.create(favoritable: talk_to_me)
diana_ross.recently_heards.create(album: black)
diana_ross.recently_heards.create(album: metal)


michael_jackson = User.create(name: "Michael Jackson", email: "michael@jackson.com", password: "123456", password_confirmation: "123456")
michael_jackson.favorites.create(favoritable: requiem_por_amazonia)
michael_jackson.favorites.create(favoritable: travel_to_brasilia)

celine_dion = User.create(name: "Celine Dion", email: "celine@dion.com", password: "123456", password_confirmation: "123456")
celine_dion.favorites.create(favoritable: talk_to_me)
celine_dion.favorites.create(favoritable: music_wont)