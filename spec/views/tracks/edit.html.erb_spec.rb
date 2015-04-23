require 'rails_helper'

RSpec.describe "tracks/edit", type: :view do
  before(:each) do
    @track = assign(:track, Track.create!(
      :title => "MyString",
      :artist => nil,
      :album => nil,
      :length => 1
    ))
  end

  it "renders the edit track form" do
    render

    assert_select "form[action=?][method=?]", track_path(@track), "post" do

      assert_select "input#track_title[name=?]", "track[title]"

      assert_select "input#track_artist_id[name=?]", "track[artist_id]"

      assert_select "input#track_album_id[name=?]", "track[album_id]"

      assert_select "input#track_length[name=?]", "track[length]"
    end
  end
end
