class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :conversation
  validates :text, presence: true, length: { maximum: 5000 }
end
