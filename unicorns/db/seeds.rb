# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


user1 = User.create!(email: "mikelikesbikes@gmail.com", username: "mikelikesbikes", hashed_password: "password")

user2 = User.create!(email: "paullikespuppies@gmail.com", username: "paullikespuppies", hashed_password: "password")

user3 = User.create!(email: "normlikesnothing", username: "normlikesnothing", hashed_password: "password")

game1 = Game.create!(title: "Monolopy", image_url: "www.monopoloy.com", description: "Make money, buy property, beat your friends! Yay Capitalism!", number_of_players: "2-5")

game2 = Game.create!(title: "Settlers of Catan", image_url: "www.settlers.com", description: "Make a home, grow animals and follow lots of rules", number_of_players: "2-5")

game3 = Game.create!(title: "Chess", image_url: "www.chess.com", description: "Kings, queens, pawns, squares", number_of_players: "2")

category1 = Category.create!(name: "dice", type: "set")

category2 = Category.create!(name: "strategy", type: "set")

category3 = Category.create!(name: "economic", type: "set")

category4 = Category.create!(name: "Great for Mike's Monday night games!", type: "user_generated")

review1 = Review.create!(reviewer_id: 1, game_id: 1, rating:3 , body: "This game is too long. It's fun, but I need to get some sleep so I can go to work tomorrow.")

review2 = Review.create!(reviewer_id: 2, game_id: 3, rating:4 , body: "I just learned about castling! wtf!?!?")

review3 = Reviews.create!(reviewer_id: 1, game_id: 2, rating:5 , body: "Best game EVER!!! I want to play this every second of evergy day!")

Friendship.create!(friend_requester: 1, friend_acceptor: 2)

Friendship.create!(friend_requester: 1, friend_acceptor: 3)

Friendship.create!(friend_requester: 2, friend_acceptor: 3)

Owned_game.create!(owner_id: 1, game_id: 1)

Owned_game.create!(owner_id: 2, game_id: 2)

Owned_game.create!(owner_id: 3, game_id: 3)

Categorization.create!(game_id: 1, category_id: 1)

Categorization.create!(game_id: 1, category_id: 2)

Categorization.create!(game_id: 1, category_id: 3)

Categorization.create!(game_id: 2, category_id: 2)

Categorization.create!(game_id: 3, category_id: 2)

