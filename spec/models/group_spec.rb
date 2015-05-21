require 'rails_helper'

describe Group, type: :model do

  it { should have_many :users }
  it { should have_many :conversations }

end
