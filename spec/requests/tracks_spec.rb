require 'rails_helper'

RSpec.describe "Tracks", type: :request do
  describe "GET /tracks" do

    context "when user isn't signed in" do

      it "redirects user to sign in" do
        get tracks_path
        expect(response).to have_http_status(302)
      end
    end
  end
end
