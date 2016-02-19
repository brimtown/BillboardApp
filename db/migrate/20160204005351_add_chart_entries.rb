class AddChartEntries < ActiveRecord::Migration
  def up
    create_table :chart_entries do |t|
      t.integer :song_id
      t.integer :year
      t.integer :position
      t.timestamps
    end

    Song.all.each do |song|
      chart_entry = ChartEntry.new

      chart_entry.song_id = song.id
      chart_entry.year = song.year
      chart_entry.position = song.position

      chart_entry.save!
    end

    remove_column :songs, :year
  end

  def down

  end
end
