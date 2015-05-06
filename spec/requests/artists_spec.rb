require 'rails_helper'

RSpec.describe "Artists", type: :request do
  describe "GET /artists" do

    it "returns a list of artists" do
      get artists_path
      expect(response).to have_http_status(200)
    end
  end
end
