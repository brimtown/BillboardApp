class SongsController < ApplicationController
  def index
    @songs_grouped_by_year = Song.includes(:artist).all.order(year: :asc, position: :asc).group_by(&:year)
  end
end
