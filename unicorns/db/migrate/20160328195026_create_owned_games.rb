class CreateOwnedGames < ActiveRecord::Migration
  def change
    create_table :owned_games do |t|
      t.references :owner
      t.references :game

      t.timestamps null: false
    end
  end
end
