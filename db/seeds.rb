# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Venue.destroy_all
User.destroy_all
Track.destroy_all
Event.destroy_all
EventTrack.destroy_all

require "open-uri"

file = URI.open('https://static1.squarespace.com/static/59fde39a4c326d23522f5ad2/t/5cd2efb44192026b4b76e3ed/1557327804600/Soho_Residence_interior_night+1.jpeg?format=1500w')
venues =  Venue.create(
    name: "Soho Residence",
    location: "83 - 85 Wardour St, Soho, London"
  )
venues.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')


file = URI.open('https://img.tagvenue.com/resize/77/02/widen-1680-noupsize;2356-lighthouse-bar-nightclub-venue.jpg')
venues = Venue.create(
    name: "Lighthouse Bar & Nightclub",
    location: "62 Rivington Street,Shoreditch,London"
  )
venues.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')


file = URI.open('https://headbox-media.imgix.net/uploads/space_photo/filename/30353/Arena2.jpg?auto=compress,format')
venues = Venue.create(
    name: "The O2",
    location: "Peninsula Square, Greenwich Peninsula, London"
  )
venues.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')



file = URI.open('https://theatreprojects.com/files/projects/roundhouse-01.jpg')
venues = Venue.create(
    name: "Roundhouse",
    location: "Chalk Farm Rd, Camden Town, London"
  )
venues.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')



file = URI.open('https://static.designmynight.com/uploads/2019/09/LCCOldSt-HighRes-7K8B7011-HDRx-optimised.jpg')
venues = Venue.create(
    name: "London Cocktail Club - Shoreditch",
    location: "29 Sclater St, Shoreditch, London"
  )
venues.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')



file = URI.open('https://static.designmynight.com/uploads/2018/01/13336024_1356851664330971_2199124175865444348_n-optimised.jpg')
venues = Venue.create(
    name: "The Old Queens Head",
    location: "44 Essex Rd, Islington, London"
  )
venues.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')



file = URI.open('https://static.designmynight.com/uploads/2018/01/13336024_1356851664330971_2199124175865444348_n-optimised.jpg')
# file = URI.open('https://f3e6t7k9.stackpathcdn.com/wp-content/uploads/2018/04/Cafe-De-Paris-.jpg')
venues = Venue.create(
    name: "Café de Paris",
    location: "3-4 Coventry St, West End, London"
  )
venues.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')



file = URI.open('https://afternoontea.co.uk/media/3918087/newinterior_main.jpg')
venues = Venue.create(
    name: "Café Royal",
    location: " 10 Air St, Soho, London"
  )
venues.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')




file = URI.open('https://cdn.venuescanner.com/photos/fatev/med_85f1cf842bb636c8d500deea532b5e90.jpg')
venues = Venue.create(
    name: "Phoenix Arts Club",
    location: "1 Phoenix St, West End, London"
  )
venues.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')



file = URI.open('https://flightclubdarts.com/london/files/sliders/1569938327_fc-locations-shoreditch-photo-gallery-6.jpg?be2a1390fb')
venues = Venue.create(
    name: "Flight Club Shoreditch",
    location: "2A Worship St, London"
  )
venues.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')


file = URI.open('https://static.standard.co.uk/s3fs-public/thumbnails/image/2019/01/30/12/homeboy-7.jpg')
venues = Venue.create(
    name: "Homeboy Bar",
    location: "108 Essex Rd, Islington, London"
  )
venues.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')




file = URI.open('https://media-cdn.tripadvisor.com/media/photo-s/17/1b/98/b6/the-legendary-bar-at.jpg')
venues = Venue.create(
    name: "Nightjar",
    location: "129 City Rd, Old Street, London"
  )
venues.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')



file = URI.open('https://secretldn.com/wp-content/uploads/2018/11/bloomsbury-basement-bar-cosy.jpg')
venues = Venue.create(
    name: "The Bloomsbury Club",
    location: " 16-22 Great Russell St, Bloomsbury, London"
  )
venues.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')




file = URI.open('https://londoncocktailclub.co.uk/wp-content/uploads/2019/11/SA2.jpg')
venues = Venue.create(
    name: "London Cocktail Club - Oxford Circus",
    location: "4 Great Portland St, Fitzrovia, London"
  )
venues.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')




file = URI.open('https://i2-prod.grimsbytelegraph.co.uk/incoming/article3293814.ece/ALTERNATES/s1200b/0_JS191858646.jpg')
venues = Venue.create(
    name: "Retro Bar",
    location: "2 George Ct, Charing Cross, London"
  )
venues.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')




file = URI.open('https://media.lastnightoffreedom.co.uk/images/articles/gallery/258/258-SM.jpg')
venues = Venue.create(
    name: "The Original Shoreditch Pub Crawl",
    location: "145 Shoreditch High St, Hackney, London"
  )
venues.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')




file = URI.open('https://hirespace.imgix.net/spaces/11936/n3qa3izobht.jpg?h=1080&w=1920&auto=format&fit=crop&q=40')
venues = Venue.create(
    name: "Northumberland Avenue",
    location: " 8 Northumberland Ave, Westminster, London"
  )
venues.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')




file = URI.open('https://static.designmynight.com/uploads/2018/01/13336024_1356851664330971_2199124175865444348_n-optimised.jpg')
# file = URI.open('https://en.parisinfo.com/var/otcp/sites/images/node_43/node_51/node_77884/node_77888/whisper-club-paris-salle-%7C-630x405-%7C-%C2%A9-otcp/18061969-1-fre-FR/Whisper-Club-Paris-Salle-%7C-630x405-%7C-%C2%A9-OTCP.jpg')
venues = Venue.create(
    name: "The Club",
    location: "24 Rue Surcouf, 75007 Paris"
  )
venues.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')



file = URI.open('https://media-cdn.tripadvisor.com/media/photo-m/1280/13/94/7d/d4/the-team.jpg')
venues = Venue.create(
    name: "Lulu White Drinking Club",
    location: "12 Rue Frochot, 75009 Paris"
  )
venues.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')



file = URI.open('https://media.timeout.com/images/103569818/image.jpg')
venues = Venue.create(
    name: "Arbane - Bar Cocktail Club",
    location: "10 Rue Guénégaud, 75006 Paris"
  )
venues.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')




users = User.create(
  first_name: "William",
  last_name: "Brown",
  email: "WilliamBrown@gmail.com",
  dj_name: "Will",
  password: "bethedj"
  )


users = User.create(
  first_name: "Bill",
  last_name: "White",
  email: "BillWhite@gmail.com",
  dj_name: "Billy",
  password: "bethedj"
  )


users = User.create(
  first_name: "Rammy",
  last_name: "Wilston",
  email: "rammy@gmail.com",
  dj_name: "RW",
  password: "bethedj"
  )


users = User.create(
  first_name: "Armin",
  last_name: "VanBuren",
  email: "arminvan@gmail.com",
  dj_name: "ArmVan",
  password: "bethedj"
  )


file = URI.open('https://pyxis.nymag.com/v1/imgs/d79/42f/97ed074830069ca717f456c6ae797b3864-17-billie-eilish.rsquare.w1200.jpg')
tracks = Track.create(
  name: "Pirate Baird O'Connell",
  artist: "Billie Eilish",
  genre: "streambait"
  )
tracks.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')



file = URI.open('https://www.ansa.it/webimages/img_457x/2016/11/13/49943c79ffb2e3a8d52a35094c7ebd93.jpg')
tracks = Track.create(
  name: "Viva La Vida",
  artist: "Cold Play",
  genre: "Rock"
  )
tracks.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')




file = URI.open('https://upload.wikimedia.org/wikipedia/en/5/5a/Fabulousmiracles-lpcover-19.jpg')
tracks = Track.create(
  name: "Going to a Go-Go",
  artist: "The Miracles",
  genre: "Classic Soul"
  )
tracks.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')



file = URI.open('https://d2tml28x3t0b85.cloudfront.net/tracks/artworks/000/511/033/original/558ea7.jpeg?1493012328')
tracks = Track.create(
  name: "What Do You Mean?",
  artist: "Justin Bieber",
  genre: "Pop/Soul"
  )
tracks.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')



file = URI.open('https://opradre.com/wp-content/uploads/2019/06/Justin-Bieber-Love-Yourself.jpg')
tracks = Track.create(
  name: " Love Yourself ",
  artist: "Justin Bieber",
  genre: "Pop"
  )
tracks.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')



file = URI.open('https://img.christiantimes.com/full/26202/295-295/justin-bieber-sorry.jpg')
tracks = Track.create(
  name: "Sorry",
  artist: "Justin Bieber",
  genre: "Pop"
  )
tracks.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')




file = URI.open('https://static.mixupload.com/n5/media/track/2546/940/cover_orig.jpg?133')
tracks = Track.create(
  name: "In And Out Of Love",
  artist: "Armin van Buuren feat. Sharon den Adel",
  genre: "Trance"
  )
tracks.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')



file = URI.open('https://i.ytimg.com/vi/02dKmYn31a4/hqdefault.jpg')
tracks = Track.create(
  name: " Sunny Days",
  artist: "Armin van Buuren feat. Josh Cumbee",
  genre: "Dance/Electronic"
  )
tracks.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')



file = URI.open('https://i2.sndcdn.com/artworks-000038425195-u2rh2u-t500x500.jpg')
tracks = Track.create(
  name: " Waiting For The Nigh",
  artist: "Armin van Buuren feat. Fiora",
  genre: "Dance/Electronic"
  )
tracks.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')



file = URI.open('https://i1.sndcdn.com/artworks-000123112582-7rovxb-t500x500.jpg')
tracks = Track.create(
  name: "Feels So Good",
  artist: "Armin van Buuren ft. Nadia Ali",
  genre: "Dance/Electronic"
  )
tracks.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')



file = URI.open('https://edmhunters-563e.kxcdn.com/mediafiles/dj/images/gigi-dagostino_12.jpg')
tracks = Track.create(
  name: "Hollywood",
  artist: "LA Vision & Gigi D'Agostino",
  genre: "Dance/Electronic"
  )
tracks.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')



file = URI.open('https://i1.sndcdn.com/avatars-yzPdLOJu5zoxoj7X-xh6psw-t300x300.jpg')
tracks = Track.create(
  name: "In Your Eyes",
  artist: "Robin Schulz feat. Alida",
  genre: "Dance/Electronic"
  )
tracks.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')



file = URI.open('https://d24jnm9llkb1ub.cloudfront.net/icpn/190295186746/190295186746-cover-zoom.jpg')
tracks = Track.create(
  name: "Alane",
  artist: "Robin Schulz & Wes",
  genre: "Dance/Electronic"
  )
tracks.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')



file = URI.open('https://i3.sndcdn.com/avatars-fMfbRDaZFF8MxeOk-ZwWqKQ-t500x500.jpg')
tracks = Track.create(
  name: "Weekend",
  artist: "LIZOT",
  genre: "Dance/Electronic"
  )
tracks.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')



file = URI.open('https://www.nme.com/wp-content/uploads/2020/04/Black-Eyed.jpg')
tracks = Track.create(
  name: "Mamacita",
  artist: "J. Rey Soul & Ozuna",
  genre: "Pop"
  )
tracks.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')



file = URI.open('https://edmhousenetwork.com/wp-content/uploads/2019/08/zafrojack.jpg')
tracks = Track.create(
  name: "Speechless",
  artist: "Chico Rose & Afrojack",
  genre: "Dance/Electronic"
  )
tracks.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')



file = URI.open('https://itsmyster-e.com/wp-content/uploads/2015/03/kygo-ultra-set.jpg')
tracks = Track.create(
  name: "Lose You",
  artist: "Tiësto",
  genre: "Dance/Electronic"
  )
tracks.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')



file = URI.open('https://dancingastronaut.com/wp-content/uploads/2018/03/tiesto-ultra-music-festival-2016-pic-rukes.jpg')
tracks = Track.create(
  name: "Coffee",
  artist: "Tiësto & Vintage Culture",
  genre: "Dance/Electronic"
  )
tracks.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')



file = URI.open('https://m.media-amazon.com/images/I/71z6bkE-nfL._SS500_.jpg')
tracks = Track.create(
  name: "Animals",
  artist: "Martin Garrix",
  genre: "Dance/Electronic"
  )
tracks.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')



file = URI.open('https://dancingastronaut.com/wp-content/uploads/2018/03/tiesto-ultra-music-festival-2016-pic-rukes.jpg')
tracks = Track.create(
  name: "Red Lights",
  artist: "Tiësto",
  genre: "Dance/Electronic"
  )
tracks.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')



file = URI.open('https://m.media-amazon.com/images/I/71z6bkE-nfL._SS500_.jpg')
tracks = Track.create(
  name: "High On Life",
  artist: "Martin Garrix feat. Bonn",
  genre: "Dance/Electronic"
  )
tracks.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')



file = URI.open('https://i1.sndcdn.com/artworks-000660217471-khqhx5-t300x300.jpg')
tracks = Track.create(
  name: "Happy Now",
  artist: "Kygo",
  genre: "Dance"
  )
tracks.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')



file = URI.open('https://i.ytimg.com/vi/jlfU5NW2RVU/maxresdefault.jpg')
tracks = Track.create(
  name: "How Would You Feel",
  artist: "Dirty Nano feat. Ed Sheeran",
  genre: "Dance/Electronic"
  )
tracks.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')



file = URI.open('https://lastfm.freetls.fastly.net/i/u/500x500/375fbd899a1f4104a2e1a6d19acc31b9.jpg')
tracks = Track.create(
  name: "Vaya Con Dios",
  artist: "Pauvre Diable",
  genre: "Dance"
  )
tracks.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')



file = URI.open('https://i.ytimg.com/vi/N6CCKqVU7oM/maxresdefault.jpg')
tracks = Track.create(
  name: "White bishop",
  artist: "Emeric Imre",
  genre: "Dance"
  )
tracks.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')



file = URI.open('https://images.genius.com/748bb66860de41158107377ed6f9979e.750x400x1.jpg')
tracks = Track.create(
  name: "Shallow",
  artist: "Lady Gaga, Bradley Cooper",
  genre: "Country music"
  )
tracks.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')



file = URI.open('https://i.ytimg.com/vi/vVfud6vol-U/maxresdefault.jpg')
tracks = Track.create(
  name: "You Are The Reason",
  artist: "Calum Scott, Leona Lewis",
  genre: "Pop"
  )
tracks.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')



file = URI.open('https://i.scdn.co/image/ab67616d00001e02d08209944468440145f01524')
tracks = Track.create(
  name: "Photograph",
  artist: "Ed Sheeran",
  genre: "Pop"
  )
tracks.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')


file = URI.open('https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSjUlWvxSwboi-EDkmQwjlR3N_DM63Bx1rr8A&usqp=CAU')
tracks = Track.create(
  name: "Memories",
  artist: "Maroon 5",
  genre: "Pop"
  )
tracks.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')





file = URI.open('https://i0.wp.com/weownthenitenyc.com/wp-content/uploads/2019/02/We-Own-The-Nite-NYC_Untold-Music-Festival-2019_Line-up_Romania_UNTOLD_Festival_2018_Main-Stage.jpeg.jpeg?fit=960%2C639&ssl=1')
events = Event.create(
  date: "12.09.2020",
  venue_id: Venue.first.id,
  user_id: User.first.id,
  name: "XOYO"
  )
events.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')



file = URI.open('https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcR0lpEDZEuIy2b_jE8XKB8Bzld6tGr5pLzNWQ&usqp=CAU')
events = Event.create(
  date: "07.10.2020",
  venue_id: Venue.first.id,
  user_id: User.first.id,
  name: "Jazz"
  )
events.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')




file = URI.open('https://www.themayor.eu/uploads/image/file/2877/medium_Neversea.jpg?1558434364')
events = Event.create(
  date: "08.09.2020",
  venue_id: Venue.first.id,
  user_id: User.first.id,
  name: "The Underworld"
  )
events.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')




file = URI.open('https://d2joqs9jfh6k92.cloudfront.net/wp-content/uploads/2018/02/15174541/hold-fast-direct-2.jpg')
events = Event.create(
  date: "09.10.2020",
  venue_id: Venue.first.id,
  user_id: User.first.id,
  name: "The Camden Assembly"
  )
events.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')




file = URI.open('https://devourparisfoodtours.com/wp-content/uploads/paris-nightlife-lulu-white.jpg')
events = Event.create(
  date: "08.12.2020",
  venue_id: Venue.first.id,
  user_id: User.first.id,
  name: "Lockside Camden"
  )
events.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')



file = URI.open('https://miro.medium.com/max/1200/1*oAOr1sVjmQxeH7iUoV4q4Q.jpeg')
events = Event.create(
  date: "04.09.2020",
  venue_id: Venue.first.id,
  user_id: User.first.id,
  name: "Upper House Islington"
  )
events.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')



file = URI.open('https://media-cdn.tripadvisor.com/media/photo-m/1280/1a/1c/fd/38/the-lighthouse-bar-club.jpg')
events = Event.create(
  date: "09.09.2020",
  venue_id: Venue.first.id,
  user_id: User.first.id,
  name: "The Devonshire Arms"
  )
events.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')




file = URI.open('https://ents24.imgix.net/image/000/355/619/18924bda8e31bcb4e2a720f8299823d8d316828c.jpg?auto=format&fp-x=0.503&fp-y=0.511&fit=crop&crop=focalpoint&w=1920&h=1920')
events = Event.create(
  date: "07.09.2020",
  venue_id: Venue.first.id,
  user_id: User.first.id,
  name: "Ronnie Scott's"
  )
events.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')




file = URI.open('https://d31fr2pwly4c4s.cloudfront.net/1/e/c/1202625_1_wicked-student-nights-every-friday-at-cafe-de-paris_400.jpg')
events = Event.create(
  date: "15.09.2020",
  venue_id: Venue.first.id,
  user_id: User.first.id,
  name: "The Social"
  )
events.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')




file = URI.open('https://www.culturewhisper.com/images/thumbs/cw-34211-635x361.jpg')
events = Event.create(
  date: "20.09.2020",
  venue_id: Venue.first.id,
  user_id: User.first.id,
  name: "Ruby's"
  )
events.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')




file = URI.open('https://theoldqueenshead.com/wp-content/uploads/2014/11/untitled-1-of-166.jpg')
events = Event.create(
  date: "10.10.2020",
  venue_id: Venue.first.id,
  user_id: User.first.id,
  name: "Vortex"
  )
events.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')


tracks = Track.all

tracks.each do |track|
  event_tracks = EventTrack.create(
  track_id: track.id,
  event_id: Event.first.id)
end

# event_tracks = EventTrack.create(
#   track_id: Track.first.id,
#   event_id: Event.first.id
#   )


# event_tracks = EventTrack.create(
#   track_id: Track.first.id + 1,
#   event_id: Event.first.id
#   )

# event_tracks = EventTrack.create(
#   track_id: Track.first.id + 1,
#   event_id: Event.first.id + 1
#   )

# event_tracks = EventTrack.create(
#   track_id: Track.first.id + 1,
#   event_id: Event.first.id + 1
#   )
