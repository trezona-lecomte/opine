require 'rails_helper'

RSpec.describe "albums/index", type: :view do
  before(:each) do
    assign(:albums, [
      Album.create!(
        :name => "Amnesiac"
      ),
      Album.create!(
        :name => "Kid A"
      )
    ])
  end

  it "renders a list of albums" do
    render
    assert_select "tr>td", :text => "Amnesiac".to_s, :count => 1
    assert_select "tr>td", :text => "Kid A".to_s, :count => 1
  end
end
