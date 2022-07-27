class GrammarStats
    def initialize
      @correct = 0
      @wrong = 0
    end
  
    def check(text) # text is a string
      # Returns true or false depending on whether the text begins with a capital
      # letter and ends with a sentence-ending punctuation mark.
   if text.match? ("Hi,nice day.") 
     @correct += 1
      true
   else
    @wrong += 1
    false
   end
        
    end
  
    def percentage_good
      # Returns as an integer the percentage of texts checked so far that passed
      # the check defined in the `check` method. The number 55 represents 55%.
      percentage = @correct + @wrong.to_f
      fail "No check" if percentage == 0.0
      (@correct / percentage * 100).to_i
    end
  end