class User < ActiveRecord::Base
  has_many :owned_games, foreign_key: :owner_id
  has_many :reviews
  has_many :games, through: :owned_games
  has_many :reviewed_games, through: :reviews, source: :games
  has_many :requested_friendships, foreign_key: :friend_requestor_id, class_name: "Friendship"
  has_many :accepted_friendships, foreign_key: :friend_acceptor_id, class_name: "Friendship"
  # has_many :friends, through: :requested_friendships, source: :friend_requestor, through: :accepted_friendships, source: :friend_acceptor

  has_secure_password

  def friends
    return self.requested_friendships + self.accepted_friendships
  end
end
