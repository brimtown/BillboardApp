class CreateArtistsTable < ActiveRecord::Migration
  def up
    create_table :artists do |t|
      t.text :name
      t.timestamps
    end

    add_column :songs, :artist_id, :integer

    sql = <<-sql
       INSERT INTO artists(name) (SELECT distinct(artist) FROM songs);

       UPDATE songs s
       SET s.artist_id = artists.id
       FROM artists
       WHERE s.artist = artists.name;
    sql

    execute(sql)

    remove_column :songs, :artist
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
