require 'rails_helper'

describe Comment, type: :model do
  
  before(:each) do
    @comment = build(:comment)
  end

  it 'is valid' do
    expect(@comment).to be_valid
  end

  it 'belongs to a user' do
    expect(@comment.user).to be_valid
  end
end
