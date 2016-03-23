class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :chart_entry

  def self.songs_grouped_by_year
      all.
      group_by do |song|
        song.chart_entry.year
      end
  end
end
