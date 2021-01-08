module PagesHelper
  def my_todo(todos)
    todos.each do |item|
      concat content_tag(:li, (link_to "#{item.title}", todo_list_path(item.id), class: 'nav-link text-dark text-center'), class: 'list-group-item')
    end

  end
end
