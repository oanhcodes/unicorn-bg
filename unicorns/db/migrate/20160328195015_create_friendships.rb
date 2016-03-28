class CreateFriendships < ActiveRecord::Migration
  def change
    create_table :friendships do |t|
      t.references :friend_requestor
      t.references :friend_acceptor

      t.timestamps null: false
    end
  end
end
