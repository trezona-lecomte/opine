class CreateConversations < ActiveRecord::Migration
  def change
    create_table :conversations do |t|
      t.references :Group, index: true

      t.timestamps null: false
    end
    add_foreign_key :conversations, :groups, column: :id
  end
end
