# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

@prince = Artist.create!(name: "Prince")
@purple = @prince.songs.create!(title: "Purple Rain", length: 435, play_count: 2345)
@beret = @prince.songs.create!(title: "Raspberry beret", length: 235, play_count: 25423)
