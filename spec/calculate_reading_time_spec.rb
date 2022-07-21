require "calculate_reading_time"

RSpec.describe "calculate_reading _time method" do
    context "given empty string" do
      it " returns zero " do
        expect(calculate_reading_time("")).to eq 0
      end
    end  
    
    context "given a text of under two hundred words" do
      it " returns one" do
       expect(calculate_reading_time("one ")).to eq 1
      end
    end

    context "given a text of two hundred words" do
      it " returns one" do
       expect(calculate_reading_time("one " * 200)).to eq 1
      end
    end
    context "given a text of three hundred words" do
      it " returns two" do
       expect(calculate_reading_time("one " * 300)).to eq 2
      end
    end
    context "given a text of four hundred words" do
      it " returns two" do
        expect(calculate_reading_time("one " * 400)).to eq 2
      end
    end

    context "given a text of five thousand words" do
      it " returns twenty five" do
        expect(calculate_reading_time("one " * 5000)).to eq 25
      end
    end
end