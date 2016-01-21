class SongsController < ApplicationController
  def index
    @songs = Song.all.order(year: :asc)
    @songsa = Song.includes(:year)
    @years = @songs.uniq.pluck(:year)
  end
end