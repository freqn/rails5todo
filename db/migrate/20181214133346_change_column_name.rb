class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :todos, :name, :title
  end
end
