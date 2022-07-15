class ChangeAnswersBodyDefault < ActiveRecord::Migration[6.1]
  def up
    change_column_default(:answers, :body, 'No text')
  end

  def down
    change_column_default(:answers, :body, nil)
  end
end
