# {{PROBLEM}} Class Design Recipe

## 1. Describe the Problem

As a user
So that I can keep track of my music listening
I want to add tracks I've listened to and see a list of them.

## 2. Design the Class Interface

_Include the initializer and public methods with all parameters and return values._

```ruby
# EXAMPLE

class MusicTrack
  def initialize # name is a string
    # ...
  end

  def add(track) 
    # No return value
  end

  def list
    # Returns a list of tracks
    # fails if the list is empty
  end
end
```

## 3. Create Examples as Tests

_Make a list of examples of how the class will behave in different situations._

```ruby
# EXAMPLE

# 1
music_track = MusicTrack.new
music_track.list# => [] 

# 2
music_track = MusicTrack.new
music_track.add("track 1")
music_track.list # ["track 1"] 

#3
music_track = MusicTrack.new
music_track.add()
music_track.list => fails "Music track is empty"

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._


