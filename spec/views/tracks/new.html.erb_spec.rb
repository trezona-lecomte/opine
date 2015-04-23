require 'rails_helper'

RSpec.describe "tracks/new", type: :view do
  before(:each) do
    assign(:track, Track.new(
      :title => "MyString",
      :artist => nil,
      :album => nil,
      :length => 1
    ))
  end

  it "renders new track form" do
    render

    assert_select "form[action=?][method=?]", tracks_path, "post" do

      assert_select "input#track_title[name=?]", "track[title]"

      assert_select "input#track_artist_id[name=?]", "track[artist_id]"

      assert_select "input#track_album_id[name=?]", "track[album_id]"

      assert_select "input#track_length[name=?]", "track[length]"
    end
  end
end
