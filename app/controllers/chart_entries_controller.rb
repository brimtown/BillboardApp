class ChartEntriesController < ApplicationController
  def index
    chart_entries_grouped_by_year = ChartEntry.chart_entries_grouped_by_year
    render :index, locals: {chart_entries_grouped_by_year: chart_entries_grouped_by_year}
  end
end
