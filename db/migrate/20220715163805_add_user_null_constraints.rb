class AddUserNullConstraints < ActiveRecord::Migration[6.1]
  def up
    change_column_null(:users, :email, false)
    change_column_null(:users, :password, false)
    change_column_null(:users, :name, false)
  end

  def down
    change_column_null(:users, :email, true)
    change_column_null(:users, :password, true)
    change_column_null(:users, :name, true)
  end
end
