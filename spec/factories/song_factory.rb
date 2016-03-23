FactoryGirl.define do
  factory :song do
    artist
    chart_entry

    title { "Joe's song" }
  end

end
