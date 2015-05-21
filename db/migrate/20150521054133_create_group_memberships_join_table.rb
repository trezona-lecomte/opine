class CreateGroupMembershipsJoinTable < ActiveRecord::Migration
  def change
    create_table :group_memberships, id: false do |t|
      t.integer :group_id, index: true
      t.integer :user_id, index: true
    end
  end
end
