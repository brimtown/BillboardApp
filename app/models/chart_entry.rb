class ChartEntry < ActiveRecord::Base
  belongs_to :song

  def self.chart_entries_grouped_by_year
    all.
    group_by do |chart_entry|
      chart_entry.year
    end
  end
end
