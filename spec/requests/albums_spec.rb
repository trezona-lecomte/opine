require 'rails_helper'

RSpec.describe "Albums", type: :request do
  describe "GET /albums" do
    
    context "when user isn't signed in" do
      it "redirects to sign in" do
        get albums_path
        expect(response).to have_http_status(302)
      end
    end
  end
end
