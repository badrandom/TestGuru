class CreateTestSessions < ActiveRecord::Migration[6.1]
  def change
    create_table :test_sessions do |t|
      t.references :user, foreign_key: true
      t.references :test, foreign_key: true
      t.boolean :finished, null: false, default: false

      t.timestamps
    end
  end
end
