class Friendship < ActiveRecord::Base
  belongs_to :friend_requestor, class_name: "User"
  belongs_to :friend_acceptor, class_name: "User"
end
