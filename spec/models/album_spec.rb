require 'rails_helper'

RSpec.describe Album, type: :model do
    
  it "is invalid without name" do
    album = Album.create(name: "  ")
    expect(album.valid?).to be false
  end

  it "is valid with only a name" do
    album = Album.create(name: "Amnesiac")
    expect(album.valid?).to be true
  end

end
