class AddMusicToTracks < ActiveRecord::Migration
  def change
    add_column :tracks, :music, :string
  end
end
