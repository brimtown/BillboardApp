class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.text :title
      t.text :artist
      t.integer :year
      t.integer :position

      t.timestamps null: false
    end
  end
end
