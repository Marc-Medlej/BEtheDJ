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


venues =  Venue.create(
    name: "Royal Albert Hall",
    location: "London,South Kensington"
  )


venues = Venue.create(
    name: "LightHouse",
    location: "London"
  )


venues = Venue.create(
    name: "The O2",
    location: "London, Greenwich Peninsula"
  )

venues = Venue.create(
    name: "Roundhouse",
    location: "Camden Town, London"
  )

venues = Venue.create(
    name: "Eventim Apollo",
    location: "London, Hammersmith"
  )

venues = Venue.create(
    name: "Southbank Centre",
    location: "London, Belvedere Road"
  )

venues = Venue.create(
    name: "Zenith Paris",
    location: "Paris, Avenue Jean Jaurès"
  )

venues = Venue.create(
    name: "Resorts World Arena",
    location: "Birmingham, Resorts World Arena"
  )

venues = Venue.create(
    name: "AccorHotels Arena",
    location: "Boulevard de Bercy, Paris"
  )

venues = Venue.create(
    name: "The Dome of Paris",
    location: "Boulevard Victor, Paris"
  )


users = User.create(
  first_name: "William",
  last_name: "Brown",
  email: "WilliamBrown@gmail.com",
  dj_name: "Will",
  password: "123456"
  )


users = User.create(
  first_name: "Bill",
  last_name: "White",
  email: "BillWhite@gmail.com",
  dj_name: "Billy",
  password: "123456"
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

events = Event.create(
  date: "12.09.2020",
  venue_id: Venue.first.id,
  user_id: User.first.id,
  name: "Untold"
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

