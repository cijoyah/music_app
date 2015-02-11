class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.string :title
      t.string :genre
      t.text :description
      t.text :art_work
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
