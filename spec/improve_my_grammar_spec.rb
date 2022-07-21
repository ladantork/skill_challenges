require "improve_my_grammar" 

RSpec.describe "improve_my_grammar method" do
  context "given none words" do
    it " returns no words given" do
      expect(improve_my_grammar("")).to eq nil
    end
  end
  context "given lower words with a none suitable sentence-ending punctuation mark" do
    it " return the text with capital letter at start and give punctuation at the end" do
      expect(improve_my_grammar("hello, nice day")).to eq "Hello, nice day."
    end
  end  
end