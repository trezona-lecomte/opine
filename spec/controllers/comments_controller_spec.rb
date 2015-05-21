require 'rails_helper'

describe CommentsController, type: :controller do

  it "redirects create to sign_in when not authenticated" do
    sentence = Faker::Lorem.sentences(1)
    post :create, comment: { text: sentence }
    expect(response).to redirect_to(new_user_session_url)
  end
end
