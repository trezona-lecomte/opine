require 'rails_helper'

describe Conversation, type: :model do
  
  it { should have_many :comments }
  it { should belong_to :group }
end
