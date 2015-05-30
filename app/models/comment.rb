class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :conversation
  validates :text, presence: true, length: { maximum: 5000 }
  validates :conversation_id, presence: true
  validates :user_id, presence: true
end
