require "make_snippet"
# A method called make_snippet that takes a string as an argument.
# returns the first five words and then a '...' if there are more than that.

RSpec.describe "make_snippet method" do
  context "given an empty string" do
    it "returns an empty string" do
        result = make_snippet("")
        expect(result).to eq "" 
    end
  end 
  context "given an string of five words" do
    it "returns five words" do
        result = make_snippet("one two three four five")
        expect(result).to eq "one two three four five"
    end
  end 
  context "given an string of six words" do
    it "returns five words ..." do
        result = make_snippet("one two three four five six")
        expect(result).to eq "one two three four five..."
    end
  end 
end 