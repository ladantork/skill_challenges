class MusicTrack
  attr_accessor :tracks
  
  def initialize
      @tracks = []
  end

 def tracks
   @tracks
  end
 def add(track)
  @tracks << track
 end
  
  def list

      fail "It's empty"  if @tracks.empty?
     @tracks
      
  end

end

