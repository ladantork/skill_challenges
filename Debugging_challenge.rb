def get_most_common_letter(text)
    p counter = Hash.new(0) # {}
    #p text.chars.each do |char| counter[char] += 1 end # ["t", "h", "e", " ", "r", "o", "o", "f", ",", " ", "t", "h", "e", " ", "r", "o", "o", "f", ",", " ", "t", "h", "e", " ", "r", "o", "o", "f", " ", "i", "s", " ", "o", "n", " ", "f", "i", "r", "e", "!"]
    p text.delete(" ").chars.select {|char|("a".."z").include? (char)  if counter[char] += 1} # ["t", "h", "e", "r", "o", "o", "f", "t", "h", "e", "r", "o", "o", "f", "t", "h", "e", "r", "o", "o", "f", "i", "s", "o", "n", "f", "i", "r", "e"]
    #p text.delete(" ") # nil
    p counter.to_a.sort_by { |k, v| v }[-1][0] # "o"
  end
  get_most_common_letter("the roof, the roof, the roof is on fire!")
  p "o"
  # Intended output:
  #
  # get_most_common_letter(“the roof, the roof, the roof is on fire!“)
  # “o”
  