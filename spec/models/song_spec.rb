require 'spec_helper'

describe Song do
  describe ".songs_grouped_by_year" do
    it 'returns a hash grouping the songs by their year' do
      song = FactoryGirl.create(:song)

      songs_grouped_by_year = Song.songs_grouped_by_year
      year = song.chart_entry.year
      expect(songs_grouped_by_year[year]).to eq([song])
    end
  end
end
