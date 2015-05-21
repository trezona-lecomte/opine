class CreateConversations < ActiveRecord::Migration
  def change
    create_table :conversations do |t|
      t.references :group, index: true

      t.timestamps null: false
    end
    add_foreign_key :conversations, :groups
  end
end
