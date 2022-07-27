require "todo_6"

RSpec.describe ToDo do
  context "Given no task" do
    it "returns empty list" do
        todo_6 = ToDo.new
        expect(todo_6.list ).to eq []
    end
  end

  context "A task given" do
    it "Returns the task in the list" do
      todo_6 = ToDo.new
      todo_6.add("Go gym")
      expect(todo_6.list).to eq ["Go gym"]
    end
  end

  context "two task given" do
    it "Returns two tasks in the list" do
      todo_6 = ToDo.new
      todo_6.add("Go gym")
      todo_6.add("Wash your hair")
      expect(todo_6.list).to eq ["Go gym", "Wash your hair"]
    end
  end

  context "completed one of the task" do
    it "Rmoves completed task" do
      todo_6 = ToDo.new
      todo_6.add("Go gym")
      todo_6.add("Wash your hair")
      todo_6.complete("Go gym")
      expect(todo_6.list).to eq ["Wash your hair"]
    end
  end

  context "when a task is not in the list" do
    it "fails" do
      todo_6 = ToDo.new
      todo_6.add("Go gym")
      expect{todo_6.complete("Wash dishes")}.to raise_error "No such a task."
    end
  end
end