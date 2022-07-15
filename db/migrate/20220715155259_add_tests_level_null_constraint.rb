class AddTestsLevelNullConstraint < ActiveRecord::Migration[6.1]
  def up
    change_column_null(:tests, :level, false)
  end

  def down
    change_column_null(:tests, :level, true)
  end
end
