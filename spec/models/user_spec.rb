require 'rails_helper'

describe User, type: :model do

  it { should validate_presence_of :name }
  it { should validate_presence_of :email }
  it { should validate_uniqueness_of :email }
  it { should have_many :comments }

  before :each do
    @user = create :user
  end

  it 'is valid' do
    expect(@user).to be_valid
  end

end
