require 'rails_helper'

RSpec.describe "Tracks", type: :request do
  describe "GET /tracks" do

    it "returns a list of tracks" do
      get tracks_path
      expect(response).to have_http_status(200)
    end
  end
end
