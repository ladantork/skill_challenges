require "count_words"
#A method called count_words that takes a string as an argument
#returns the number of words in that string.
RSpec.describe "count_words method" do
  it "return counted words" do
    expect(count_words("a selection of words")).to eq 4
  end  
  it "return counted words" do
    expect(count_words("")).to eq 0
  end  
end