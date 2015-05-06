require 'rails_helper'

RSpec.describe "Albums", type: :request do
  describe "GET /albums" do
    
    it "returns a list of albums" do
      get albums_path
      expect(response).to have_http_status(200)
    end
  end
end
