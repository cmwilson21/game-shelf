# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Seeding database"

Console.create(name: "Sega")
Console.create(name: "Nintendo")
Console.create(name: "Super Nintendo")
Console.create(name: "Nintendo 64")

Game.create(name: "Sonic", genre: "Adventure")
Game.create(name: "Tetris", genre: "Puzzle")
Game.create(name: "Super Mario Bros", genre: "Adventure")
Game.create(name: "Golden Eye", genre: "Action")


puts "Finished seeding"