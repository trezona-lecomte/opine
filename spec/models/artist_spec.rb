require 'rails_helper'

RSpec.describe Artist, type: :model do

  it "is invalid without name" do
    artist = Artist.create(name: "  ")
    expect(artist.valid?).to be false
  end

  it "is valid with only a name" do
    artist = Artist.create(name: "Thom Yorke")
    expect(artist.valid?).to be true
  end

  it "is invalid when name isn't unique" do
    artist = Artist.create(name: "Radiohead")
    imposter = Artist.create(name: "Radiohead")
    expect(imposter.valid?).to be false
  end

end
