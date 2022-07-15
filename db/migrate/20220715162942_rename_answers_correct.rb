class RenameAnswersCorrect < ActiveRecord::Migration[6.1]
  def change
    rename_column(:answers, :correct, :body)
  end
end
