# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


user1 = User.create!(email: "mikelikesbikes@gmail.com", username: "mikelikesbikes", password_digest: "password")

user2 = User.create!(email: "paullikespuppies@gmail.com", username: "paullikespuppies", password_digest: "password")

user3 = User.create!(email: "normlikesnothing", username: "normlikesnothing", password_digest: "password")

game1 = Game.create!(gameId: 31232, name: "Monolopy", image: "www.monopoloy.com", description: "Make money, buy property, beat your friends! Yay Capitalism!", minPlayers: 2, maxPlayers: 5)

game2 = Game.create!(gameId: 23214, name: "Settlers of Catan", image: "www.settlers.com", description: "Make a home, grow animals and follow lots of rules", minPlayers: 3, maxPlayers:5)

game3 = Game.create!(gameId: 24328, name: "Chess", image: "www.chess.com", description: "Kings, queens, pawns, squares", minPlayers: 4, maxPlayers: 8)

category1 = Category.create!(name: "dice", category_type: "game")

category2 = Category.create!(name: "strategy", category_type: "game")

category3 = Category.create!(name: "economic", category_type: "game")

category4 = Category.create!(name: "Great for Mike's Monday night games!", category_type: "user_generated")

review1 = Review.create!(reviewer_id: 1, game_id: 1, rating:3 , body: "This game is too long. It's fun, but I need to get some sleep so I can go to work tomorrow.")

review2 = Review.create!(reviewer_id: 2, game_id: 3, rating:4 , body: "I just learned about castling! wtf!?!?")

review3 = Review.create!(reviewer_id: 1, game_id: 2, rating:5 , body: "Best game EVER!!! I want to play this every second of evergy day!")

Friendship.create!(friend_requestor_id: 1, friend_acceptor_id: 2)

Friendship.create!(friend_requestor_id: 1, friend_acceptor_id: 3)

Friendship.create!(friend_requestor_id: 2, friend_acceptor_id: 3)

OwnedGame.create!(owner_id: 1, game_id: 1)

OwnedGame.create!(owner_id: 2, game_id: 2)

OwnedGame.create!(owner_id: 3, game_id: 3)

Categorization.create!(game_id: 1, category_id: 1)

Categorization.create!(game_id: 1, category_id: 2)

Categorization.create!(game_id: 1, category_id: 3)

Categorization.create!(game_id: 2, category_id: 2)

Categorization.create!(game_id: 3, category_id: 2)
