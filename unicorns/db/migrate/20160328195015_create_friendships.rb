class CreateFriendships < ActiveRecord::Migration
  def change
    create_table :friendships do |t|
      t.references :friend_requestor_id
      t.references :friend_acceptor_id

      t.timestamps null: false
    end
  end
end
