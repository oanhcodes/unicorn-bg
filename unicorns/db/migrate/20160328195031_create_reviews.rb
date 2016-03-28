class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.references :reviewer_id
      t.references :game_id
      t.integer :rating
      t.string :body

      t.timestamps null: false
    end
  end
end
