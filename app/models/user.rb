class User < ActiveRecord::Base
  has_many :owned_games, foreign_key: :owner_id
  has_many :reviews, foreign_key: :reviewer_id
  has_many :games, through: :owned_games
  has_many :reviewed_games, through: :reviews, source: :game

  has_friendship
  has_secure_password

end
