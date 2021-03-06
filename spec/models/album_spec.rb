require 'rails_helper'

RSpec.describe Album, type: :model do
    
  it "is invalid without name" do
    album = Album.create(name: "  ")
    expect(album.valid?).to be false
  end

  it "is valid with only a name" do
    album = Album.create(name: "Radiohead")
    expect(album.valid?).to be true
  end

  it "has a unique name" do
    radiohead = Album.create(name: "Radiohead")
    imposter = Album.create(name: "radiohead")
    expect(radiohead.valid?).to be true
    expect(imposter.valid?).to be false
  end

end
