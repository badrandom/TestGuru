class AddForeignKeys < ActiveRecord::Migration[6.1]
  def up
    add_foreign_key :tests, :categories, column: :category_id
    add_foreign_key :questions, :tests, column: :test_id
    add_foreign_key :answers, :questions, column: :question_id
  end

  def down
    remove_foreign_key :tests, :categories, column: :category_id
    remove_foreign_key :questions, :tests, column: :test_id
    remove_foreign_key :answers, :questions, column: :question_id
  end
end
