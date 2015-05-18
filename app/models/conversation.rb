class Conversation < ActiveRecord::Base
  belongs_to :group
  has_many :comments
end
