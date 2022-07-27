require "grammar_stats"

RSpec.describe GrammarStats do
  describe "#check(text)" do
    it "Returns if text begins with a capital and sentence end with punctuation mark" do
      grammar_stats = GrammarStats.new
      expect(grammar_stats.check("Hi,nice day.")).to eq true
    end

    it "returns false if won't match" do
      grammar_stats = GrammarStats.new
      expect(grammar_stats.check("hi,nice day.")).to eq false
    end

    it "returns false if won't match" do
      grammar_stats = GrammarStats.new
      expect(grammar_stats.check("Hi,nice day")).to eq false
    end

    it "returns false if won't match" do
      grammar_stats = GrammarStats.new
      expect(grammar_stats.check(" ")).to eq false
    end
  end
  describe "#percentage_good" do

    it " returns pass percentage" do
      grammar_stats = GrammarStats.new
      expect{grammar_stats.percentage_good}.to raise_error "No check"
    end
  end
end