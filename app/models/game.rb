class Game < ActiveRecord::Base
  has_many :reviews
  has_many :owned_games
  has_many :owners, through: :owned_games
  has_many :categorizations
  has_many :categories, through: :categorizations



  def average_rating
    @reviews = @reviews = Review.where(game_id: self.id)
    @ratings = []

    @reviews.each do |review|
      @ratings << review.rating
    end

    @rating_sum = 0
    @ratings.each { |rating| @rating_sum+=rating }

    if @ratings.length > 0
      @average_rating = @rating_sum/@ratings.length
    end
  end

end
