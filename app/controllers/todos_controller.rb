class TodosController < ApplicationController

  def index
    @todos = Todo.all
    @todo = Todo.new

    render json: @todos
  end

  def show
  end

  def create
    @todo = Todo.new

    if @todo.save
      json { render :show, status: :created, location: @todo }
    else
      json { render json: @todo.errors, status: :unprocessable_entity }
    end
  end

  def delete
    @todo.destroy
  end

  def update
    if @todo.update(todo_params)
      json { render :show, status: :ok, location: @todo }
    else
      json { render json: @todo.errors, status: :unprocessable_entity }
    end
  end


  private

  def todo_params
      params.require(:todo).permit(:description, :completed)
  end


end
