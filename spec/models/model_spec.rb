require 'rails_helper'

describe Todo do
  describe 'description validation' do
    it "is invalid without a description" do
      todo = Todo.new(description: "")
      todo.valid?
      expect(todo.errors).to have_key (:description)
    end
  end

  describe 'completed status'
    it "is false when a new todo is created"
    todo = Todo.new(description: "")
    expect(todo.completed).to be(false)
end
