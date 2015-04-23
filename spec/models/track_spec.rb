require 'rails_helper'

RSpec.describe Track, type: :model do

  it { should validate_presence_of(:title) }
  it { should belong_to(:album) }
  it { should belong_to(:artist) }

end
