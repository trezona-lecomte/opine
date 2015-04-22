require 'rails_helper'

RSpec.describe Artist, type: :model do

  it "is invalid without name" do
    artist = Artist.create(name: "  ")
    expect(artist.valid?).to be false
  end

  it "is valid with only a name" do
    radiohead = Artist.create(name: "Radiohead")
    expect(radiohead.valid?).to be true
  end



end
