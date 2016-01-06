class SongsController < ApplicationController
  def index
  	@songs = Song.order(year: :asc).all
  	@years = @songs.uniq.pluck(:year)
  end
end
