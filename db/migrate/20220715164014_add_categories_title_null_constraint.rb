class AddCategoriesTitleNullConstraint < ActiveRecord::Migration[6.1]
  def up
    change_column_null(:categories, :title, false)
  end

  def down
    change_column_null(:categories, :title, true)
  end
end
