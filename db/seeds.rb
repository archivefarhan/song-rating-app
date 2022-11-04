# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
song = Song.new(title: "BACK TO THE BASICS", album: "I NEVER LIKED YOU", artist: "Future", year: 2022, rating: 8)
song.save

song = Song.new(title: "No Charge", album: "Purple Reing", artist: "Future", year: 2014, rating: 8)
song.save

song = Song.new(title: "Never Stop", album: "The Wizrd", artist: "Future", year: 2018, rating: 9)
song.save
