require 'rails_helper'

describe User, type: :model do

  it { should validate_presence_of :name }

  before :each do
    @user = create :user
  end

  it 'is valid' do
    expect(@user).to be_valid
  end

end
