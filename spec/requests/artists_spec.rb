require 'rails_helper'

RSpec.describe "Artists", type: :request do
  describe "GET /artists" do

    context "when user isn't signed in" do

      it "works! (now write some real specs)" do
        get artists_path
        expect(response).to have_http_status(302)
      end
    end
  end
end
