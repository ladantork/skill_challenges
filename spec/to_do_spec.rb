require "to_do"

RSpec.describe "to_do method" do
    it "return true if the text is include #TODO" do
    result = to_do("#TODO I need food")
   expect(result).to eq true
    end
    
    it "fails if text empty" do
      expect{to_do("")}.to raise_exception "It is not a todo"
    end

    it "fails if text lowercase" do
      expect{to_do("#todo")}.to raise_exception "It is not a todo"
    end
    it "fails if text has no #" do
      expect{to_do("TODO")}.to raise_exception "It is not a todo"
    end
    it "fails if text has only #" do
      expect{to_do("#")}.to raise_exception "It is not a todo"
    end
    it "fails if text has only uppercase at first " do
      expect{to_do("#Todo")}.to raise_exception "It is not a todo"
    end
end