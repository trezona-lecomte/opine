require 'rails_helper'

describe Comment, type: :model do
  
  it { should validate_presence_of :text }
  it { should belong_to :user }

  before :each do
    @comment = build :comment
  end

  it 'is valid' do
    expect(@comment).to be_valid
  end

  it 'has editable text' do
    @comment.text = "Testing, testing, 1, 2, 3."
    expect(@comment.text).to eql("Testing, testing, 1, 2, 3.")
  end

  it 'has a maximum of 5000 characters' do
    @comment.text = Faker::Lorem.characters(5000)
    expect(@comment).to be_valid
    @comment.text = Faker::Lorem.characters(5001)
    expect(@comment).to_not be_valid
  end
end
