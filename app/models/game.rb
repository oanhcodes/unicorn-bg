class Game < ActiveRecord::Base
  has_many :reviews
  has_many :owned_games
  has_many :owners, through: :owned_games
  has_many :categorizations
  has_many :categories, through: :categorizations
end
