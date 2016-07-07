require 'rails_helper'

describe "GET todos" do
  it "returns Todos" do
    get todos_path, format: :json
    todo = Todo.new(description: "")

    expect(response.status).to eq 200
    # expect(response).to match_response_schema("todos")
  end
end
