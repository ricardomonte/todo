class AddColumnToTodoList < ActiveRecord::Migration[6.0]
  def change
    add_reference :todo_lists, :user, index: true
  end
end
