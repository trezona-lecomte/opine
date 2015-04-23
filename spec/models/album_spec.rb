require 'rails_helper'

RSpec.describe Album, type: :model do
    
  it { should validate_presence_of(:name) }
  it { should belong_to(:artist) }
  it { should have_many(:tracks) }

  it "is valid with only a name" do
    album = create(:album)
    expect(album.valid?).to be true
    expect(album.name).to eq("Amnesiac")
  end

end
