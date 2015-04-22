require 'rails_helper'

RSpec.describe Album, type: :model do
    
  it { should validate_presence_of(:name) }

  it "is valid with only a name" do
    album = Album.create(name: "Amnesiac")
    expect(album.valid?).to be true
  end

end
