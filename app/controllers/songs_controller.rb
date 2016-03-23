class SongsController < ApplicationController
  def index
    songs_grouped_by_year = Song.songs_grouped_by_year
    render :index, locals: { songs_grouped_by_year: songs_grouped_by_year }
  end
end
