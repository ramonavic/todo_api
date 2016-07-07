require 'rails_helper'

describe Todo do
  describe 'description validation' do
    it "is invalid without a description" do
      todo = Todo.new(description: "")
      todo.valid?
      expect(todo.errors).to have_key (:description)
    end
  end
end

describe 'completed status' do
    it "is false when a new todo is created" do
    todo = Todo.new(description: "")
    expect(todo.completed).to be(false)
  end
end
