class CreateArtistsTable < ActiveRecord::Migration
  def up
    create_table :artists do |t|
      t.text :name
      t.timestamps
    end

    add_column :songs, :artist_id, :integer

    sql = <<-sql
       INSERT INTO artists(name) (SELECT distinct(artist) FROM songs);
    sql

    execute(sql)

    remove_column :songs, :artist
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
