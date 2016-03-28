class CreateFriendships < ActiveRecord::Migration
  def change
    create_table :friendships do |t|
      t.string :friend_requestor
      t.string :friend_acceptor

      t.timestamps null: false
    end
  end
end
