require 'rails_helper'

RSpec.describe "artists/index", type: :view do
  before(:each) do
    assign(:artists, [
      Artist.create!(
        :name => "Fleet Foxes"
      ),
      Artist.create!(
        :name => "Thom Yorke"
      )
    ])
  end

  it "renders a list of artists" do
    render
    assert_select "tr>td", :text => "Fleet Foxes".to_s, :count => 1
    assert_select "tr>td", :text => "Thom Yorke".to_s, :count => 1
  end
end
