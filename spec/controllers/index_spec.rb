require 'rails_helper'


describe TodosController do
  before(:each) do
    todo1 = Todo.new(description: "blabla")
    todo2 = Todo.new(description: "blabla2")
    get :index
  end

  it 'should return status 200' do
      # parsed_body = JSON.parse(response.body)
      expect(response_status).to eq(200)
  end

  it 'should create todo with status 200' do
    
  end


  #   describe "POST .json" do
  #     it "created a new todo json" do
  #
  #
  #
  #
  #   end
  # end

  describe "DELETE todo json" do
    it "deletes a json file" do
      todo = Todo.new(description: "")
      xhr :delete => todo


    end


  end

end
