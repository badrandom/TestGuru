class CreateTestSessions < ActiveRecord::Migration[6.1]
  def change
    create_table :test_sessions do |t|
      t.references :user
      t.references :test
      t.boolean :finished, null: false, default: false

      t.timestamps
    end
  end
end
