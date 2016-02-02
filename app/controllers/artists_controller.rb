class ArtistsController < ApplicationController
  def show
    @artist = Artist.find(params[:id])
    @songs_by_artist = Song.where("artist_id = ?", params[:id]).order(year: :asc)
  end
end
