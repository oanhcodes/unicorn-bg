class AddColumnsToGames < ActiveRecord::Migration
  def change
    add_column :games, :gameId, :integer
    add_column :games, :name, :string
    add_column :games, :image, :string
    add_column :games, :minPlayers, :integer
    add_column :games, :maxPlayers, :integer
  end
end
