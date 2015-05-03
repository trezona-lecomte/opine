require 'rails_helper'

RSpec.describe "Users", type: :request do
  describe "GET /users/sign_up" do

    context "when user signs up manually" do

      it "redirects to users" do
        get tracks_path
        expect(response).to have_http_status(302)
      end
    end
  end
end
