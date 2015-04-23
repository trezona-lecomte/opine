require 'rails_helper'

RSpec.describe Artist, type: :model do

  it { should validate_presence_of(:name) }
  it { should have_many(:tracks) }

  it "is valid after creation" do
    artist = build(:artist)
    expect(artist.valid?).to be true
  end
  
end
