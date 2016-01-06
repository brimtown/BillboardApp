class SongsController < ApplicationController
  def index
  	@songs = Song.order(year: :asc).all
  end
end
