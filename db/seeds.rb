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
# venues.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')


file = URI.open('https://img.tagvenue.com/resize/77/02/widen-1680-noupsize;2356-lighthouse-bar-nightclub-venue.jpg')
venues = Venue.create(
    name: "Lighthouse Bar & Nightclub",
    location: "62 Rivington Street,Shoreditch,London"
  )
# venues.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')


file = URI.open('https://headbox-media.imgix.net/uploads/space_photo/filename/30353/Arena2.jpg?auto=compress,format')
venues = Venue.create(
    name: "The O2",
    location: "Peninsula Square, Greenwich Peninsula, London"
  )
# venues.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')



file = URI.open('https://theatreprojects.com/files/projects/roundhouse-01.jpg')
venues = Venue.create(
    name: "Roundhouse",
    location: "Chalk Farm Rd, Camden Town, London"
  )
# venues.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')



file = URI.open('https://static.designmynight.com/uploads/2019/09/LCCOldSt-HighRes-7K8B7011-HDRx-optimised.jpg')
venues = Venue.create(
    name: "London Cocktail Club - Shoreditch",
    location: "29 Sclater St, Shoreditch, London"
  )
# venues.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')



file = URI.open('https://static.designmynight.com/uploads/2018/01/13336024_1356851664330971_2199124175865444348_n-optimised.jpg')
venues = Venue.create(
    name: "The Old Queens Head",
    location: "44 Essex Rd, Islington, London"
  )
# venues.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')




file = URI.open('https://f3e6t7k9.stackpathcdn.com/wp-content/uploads/2018/04/Cafe-De-Paris-.jpg')
venues = Venue.create(
    name: "Café de Paris",
    location: "3-4 Coventry St, West End, London"
  )
# venues.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')



file = URI.open('https://afternoontea.co.uk/media/3918087/newinterior_main.jpg')
venues = Venue.create(
    name: "Café Royal",
    location: " 10 Air St, Soho, London"
  )
# venues.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')




file = URI.open('https://cdn.venuescanner.com/photos/fatev/med_85f1cf842bb636c8d500deea532b5e90.jpg')
venues = Venue.create(
    name: "Phoenix Arts Club",
    location: "1 Phoenix St, West End, London"
  )
# venues.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')



file = URI.open('https://flightclubdarts.com/london/files/sliders/1569938327_fc-locations-shoreditch-photo-gallery-6.jpg?be2a1390fb')
venues = Venue.create(
    name: "Flight Club Shoreditch",
    location: "2A Worship St, London"
  )
# venues.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')


file = URI.open('https://static.standard.co.uk/s3fs-public/thumbnails/image/2019/01/30/12/homeboy-7.jpg')
venues = Venue.create(
    name: "Homeboy Bar",
    location: "108 Essex Rd, Islington, London"
  )
# venues.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')




file = URI.open('https://media-cdn.tripadvisor.com/media/photo-s/17/1b/98/b6/the-legendary-bar-at.jpg')
venues = Venue.create(
    name: "Nightjar",
    location: "129 City Rd, Old Street, London"
  )
# venues.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')



file = URI.open('https://secretldn.com/wp-content/uploads/2018/11/bloomsbury-basement-bar-cosy.jpg')
venues = Venue.create(
    name: "The Bloomsbury Club",
    location: " 16-22 Great Russell St, Bloomsbury, London"
  )
# venues.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')




file = URI.open('https://londoncocktailclub.co.uk/wp-content/uploads/2019/11/SA2.jpg')
venues = Venue.create(
    name: "London Cocktail Club - Oxford Circus",
    location: "4 Great Portland St, Fitzrovia, London"
  )
# venues.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')




file = URI.open('https://i2-prod.grimsbytelegraph.co.uk/incoming/article3293814.ece/ALTERNATES/s1200b/0_JS191858646.jpg')
venues = Venue.create(
    name: "Retro Bar",
    location: "2 George Ct, Charing Cross, London"
  )
# venues.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')




file = URI.open('https://media.lastnightoffreedom.co.uk/images/articles/gallery/258/258-SM.jpg')
venues = Venue.create(
    name: "The Original Shoreditch Pub Crawl",
    location: "145 Shoreditch High St, Hackney, London"
  )
# venues.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')




file = URI.open('https://hirespace.imgix.net/spaces/11936/n3qa3izobht.jpg?h=1080&w=1920&auto=format&fit=crop&q=40')
venues = Venue.create(
    name: "8 Northumberland Avenue",
    location: " 8 Northumberland Ave, Westminster, London"
  )
# venues.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')




file = URI.open('https://en.parisinfo.com/var/otcp/sites/images/node_43/node_51/node_77884/node_77888/whisper-club-paris-salle-%7C-630x405-%7C-%C2%A9-otcp/18061969-1-fre-FR/Whisper-Club-Paris-Salle-%7C-630x405-%7C-%C2%A9-OTCP.jpg')
venues = Venue.create(
    name: "The Club",
    location: "24 Rue Surcouf, 75007 Paris"
  )
# venues.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')



file = URI.open('https://media-cdn.tripadvisor.com/media/photo-m/1280/13/94/7d/d4/the-team.jpg')
venues = Venue.create(
    name: "Lulu White Drinking Club",
    location: "12 Rue Frochot, 75009 Paris"
  )
# venues.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')



file = URI.open('https://media.timeout.com/images/103569818/image.jpg')
venues = Venue.create(
    name: "Arbane - Bar Cocktail Club",
    location: "10 Rue Guénégaud, 75006 Paris"
  )
# venues.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')




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


tracks = Track.create(
  name: "Pirate Baird O'Connell",
  artist: "Billie Eilish",
  genre: "streambait"
  )

tracks = Track.create(
  name: "Viva La Vida",
  artist: "Cold Play",
  genre: "Rock"
  )



tracks = Track.create(
  name: "Going to a Go-Go",
  artist: "The Miracles",
  genre: "Classic Soul"
  )



events = Event.create(
  date: "12.09.2020",
  venue_id: Venue.first.id,
  user_id: User.first.id,
  name: "Untold"
  )



events = Event.create(
  date: "07.10.2020",
  venue_id: Venue.first.id,
  user_id: User.first.id,
  name: "Homeboy"
  )



events = Event.create(
  date: "08.09.2020",
  venue_id: Venue.first.id,
  user_id: User.first.id,
  name: "NeverSea"
  )

event_tracks = EventTrack.create(
  already_played: false,
  track_id: Track.first.id,
  event_id: Event.first.id
  )

event_tracks = EventTrack.create(
  already_played: true,
  track_id: Track.first.id + 1,
  event_id: Event.first.id
  )

event_tracks = EventTrack.create(
  already_played: true,
  track_id: Track.first.id + 1,
  event_id: Event.first.id + 1
  )


