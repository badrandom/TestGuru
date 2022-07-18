class CreateTestSessions < ActiveRecord::Migration[6.1]
  def change
    create_table :test_sessions do |t|
      t.integer :user_id, null: false
      t.integer :test_id, null: false
      t.boolean :finished, null: false, default: false

      t.timestamps
    end
    add_foreign_key :test_sessions, :users, column: :user_id
    add_foreign_key :test_sessions, :tests, column: :test_id
  end
end
