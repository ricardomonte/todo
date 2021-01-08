class RemoveTodoListIdFromUser < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :todo_list_id
  end
end
