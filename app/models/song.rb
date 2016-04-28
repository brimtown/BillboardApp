class Song < ActiveRecord::Base
  belongs_to :artist
  has_one :chart_entry

end
