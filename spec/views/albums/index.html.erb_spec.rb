require 'rails_helper'

RSpec.describe "albums/index", type: :view do
  before(:each) do
    assign(:albums, [
      Album.create!(
        :name => "Radiohead"
      ),
      Album.create!(
        :name => "Thom Yorke"
      )
    ])
  end

  it "renders a list of albums" do
    render
    assert_select "tr>td", :text => "Radiohead".to_s, :count => 1
    assert_select "tr>td", :text => "Thom Yorke".to_s, :count => 1
  end
end
