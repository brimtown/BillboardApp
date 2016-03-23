require 'spec_helper'

describe SongsController, type: :controller do
  describe "#index" do
    let(:song) { double(:song) }
    let(:songs_grouped_by_year) do
      {1999 => [song]}
    end

    before do
      allow(Song).to receive(:songs_grouped_by_year).and_return(songs_grouped_by_year)
      allow(controller).to receive(:render)
    end

    it 'renders the index template' do
      get :index
      expect(controller).to have_received(:render).
        with(:index, locals: { songs_grouped_by_year: songs_grouped_by_year })
    end
  end
end
