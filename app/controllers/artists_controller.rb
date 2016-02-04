class ArtistsController < ApplicationController
  def show
    @artist = Artist.find(params[:id])
    @chart_entries_by_artist = ChartEntry.joins(:song => :artist).where('artists.id' => params[:id]).order(year: :asc)
  end
end
