require 'rails_helper'

RSpec.describe Todo, type: :model do
  context "a todo is valid" do
    it "is a valid todo" do
      params = {title: "Something", description: "write more tests"}
      expect(Todo.new(params)).to be_valid
    end
  end

  pending "add some examples to (or delete) #{__FILE__}"
end
