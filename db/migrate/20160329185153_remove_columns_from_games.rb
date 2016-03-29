class RemoveColumnsFromGames < ActiveRecord::Migration
  def change
    remove_column :games, :title, :string
    remove_column :games, :image_url, :string
    remove_column :games, :number_of_players, :integer
  end
end
