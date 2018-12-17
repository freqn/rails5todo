class AddPriorityToTodos < ActiveRecord::Migration[5.2]
  def change
    add_column :todos, :priority_level, :integer
  end
end
