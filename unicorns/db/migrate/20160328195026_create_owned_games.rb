class CreateOwnedGames < ActiveRecord::Migration
  def change
    create_table :owned_games do |t|
      t.references :owner_id
      t.references :game_id

      t.timestamps null: false
    end
  end
end
