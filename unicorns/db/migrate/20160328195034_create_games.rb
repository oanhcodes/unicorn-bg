class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :title
      t.string :image_url
      t.string :description
      t.string :number_of_players

      t.timestamps null: false
    end
  end
end
