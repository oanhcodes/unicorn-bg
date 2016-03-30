class Review < ActiveRecord::Base
  belongs_to :reviewer, class_name: "User"
  belongs_to :game

  validates :rating, presence: true
  validates :rating, numericality: { only_integer: true, less_than_or_equal_to: 5, greater_than: 0 }

end
