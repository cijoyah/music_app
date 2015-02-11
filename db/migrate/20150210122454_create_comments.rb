class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.belongs_to :user, index: true
      t.belongs_to :track, index: true
      t.text :content
      t.integer :rating

      t.timestamps null: false
    end
    add_foreign_key :comments, :users
    add_foreign_key :comments, :tracks
  end
end
