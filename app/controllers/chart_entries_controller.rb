class ChartEntriesController < ApplicationController
  def index
    @chart_entries_grouped_by_year = ChartEntry.includes(song: :artist).all.order(year: :asc, position: :asc).group_by(&:year)
  end
end
