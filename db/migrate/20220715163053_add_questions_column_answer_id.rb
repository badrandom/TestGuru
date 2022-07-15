class AddQuestionsColumnAnswerId < ActiveRecord::Migration[6.1]
  def up
    add_column(:questions, :answer_id, :integer)
    change_column_null(:questions, :answer_id, false)
  end

  def down
    remove_column(:questions, :answer_id)
  end
end
