class TodosController < ApplicationController

  def index
    @todos = Todo.all
    @todo = Todo.new

    render json: @todos
  end

end
