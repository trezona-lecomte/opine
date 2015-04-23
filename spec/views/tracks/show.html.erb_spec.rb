require 'rails_helper'

RSpec.describe "tracks/show", type: :view do
  before(:each) do
    @track = assign(:track, Track.create!(
      :title => "Title",
      :artist => nil,
      :album => nil,
      :length => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/1/)
  end
end
