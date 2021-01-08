class PagesController < ApplicationController
  def home
    @todo_list ||= TodoList.new
  end
end
