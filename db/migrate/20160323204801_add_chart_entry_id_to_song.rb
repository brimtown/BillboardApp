class AddChartEntryIdToSong < ActiveRecord::Migration
  def change
    add_column :songs, :chart_entry_id, :integer
  end
end
