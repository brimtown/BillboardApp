class CreateSongsTable < ActiveRecord::Migration
  def change
    create_table :songs_tables do |t|
      t.text :title
      t.text :artist
      t.integer :year
      t.integer :position
    end
  end
end
