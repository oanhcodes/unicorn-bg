class Categorization < ActiveRecord::Base
  belongs_to :games
  belongs_to :categories
end
