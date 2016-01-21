class SongsController < ApplicationController
  def index
    @songs_grouped_by_year = Song.all.group_by(&:year)
  end
end
