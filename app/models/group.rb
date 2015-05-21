class Group < ActiveRecord::Base
  has_many :conversations
  has_and_belongs_to_many :users, join_table: :group_memberships
end
