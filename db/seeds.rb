# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Seeding database"

sega = Console.create(name: "Sega")
nes = Console.create(name: "Nintendo")
snes = Console.create(name: "Super Nintendo")
n64 = Console.create(name: "Nintendo 64")

bob = Player.create(username: "BobBob", password: "alsobob")
court = Player.create(username: "RecklessReject", password: "password")
gats = Player.create(username: "GreatGatsby", password: "imadog")




Game.create(name: "Sonic", genre: "Adventure", console: sega, player: bob)
Game.create(name: "Tetris", genre: "Puzzle", console: nes, player: court)
Game.create(name: "Super Mario Bros", genre: "Adventure", console: snes, player: court)
Game.create(name: "Golden Eye", genre: "Action", console: n64, player: gats)




puts "Finished seeding"