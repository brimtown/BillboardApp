class RemovePositionFromSongs < ActiveRecord::Migration
  def change
    remove_column :songs, :position
  end
end
