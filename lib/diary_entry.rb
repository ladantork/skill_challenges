class DiaryEntry
    def initialize(title, contents) # title, contents are strings
      @title = title
      @contents = contents
      @start = 0
    end
  
    def title
      # Returns the title as a string
      return @title
    
    end
  
    def contents
      # Returns the contents as a string
      return @contents
    end
  
    def count_words
      # Returns the number of words in the contents as an integer
     return words.length
      
    end
  
    def reading_time(wpm) 
      fail "Reading speed must be zero." unless wpm.positive?
      return (count_words / wpm.to_f ).ceil
    end


    def reading_chunk(wpm, minutes) 
      fail "Reading speed must be zero." unless wpm.positive?


     # words_read = wpm * minutes
     # start = @furthest 
       #end_at = @furthest + words_read
      
      #word_list = words[start, end_at]
      #if end_at >= count_words
       # @furthest = 0
      #else
      #@furthest = end_at
      #end
      #return word_list.join(" ")
    
    #end

    array = @contents.split(" ") # [one two three]
    end_at = wpm * minutes # 2 * 1 = 2
    
    # start = start + end_at
    # wpm = 2
    # minutes = 1 

    chunk = array[@start, end_at] 
    @start = @start + end_at #0 + 2 = 2

    if @start >= array.length # arraylength = 3
      @start = 0
    else
      @start
    end

    return chunk.join(" ")
    end
  end

   private

    def words
      @contents.split(" ")
    end