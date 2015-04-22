require 'rails_helper'

RSpec.describe Album, type: :model do

  describe ""
    
  it "should be invalid without name" do
    album = Album.create(name: "")
    expect(album.valid?).to be false
  end

end
