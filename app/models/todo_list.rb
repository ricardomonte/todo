class TodoList < ApplicationRecord

  validates :title, presence: true

  has_many :todo_items
  belongs_to :user

  
  def percent_completed
    return 0 if total_items == 0
    (100 * completed_items.to_f / total_items).round
  end
  
  def completed_items
    @completed_items ||= todo_items.completed.count
  end

  def total_items
    @total_items ||= todo_items.count
  end

end
