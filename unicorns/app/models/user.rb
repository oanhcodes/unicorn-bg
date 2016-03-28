class User < ActiveRecord::Base
  has_many :owned_games
  has_many :reviews
  has_many :games, through: :owned_games
  has_many :reviewed_games, through: :reviews, source: :games 
end
