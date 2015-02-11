class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :username
      t.string :avatar
      t.string :location
      t.text :bio
      t.string :facebook
      t.string :twitter
      t.string :instagram
      t.string :youtube
      t.text :website

      t.timestamps null: false
    end
  end
end
