require "music_track"

RSpec.describe MusicTrack do
  describe "#tracks" do
   it "returns an empty array when called" do
    music_track = MusicTrack.new
    expect(music_track.tracks).to eq []
    end
  end
  it "add a track to list" do
    music_track = MusicTrack.new
    music_track.add("track 1")
    expect(music_track.list).to eq ["track 1"] 
  end

  context "calling list method on an empty list" do
    it "fails" do
    music_track = MusicTrack.new 
    expect { music_track.list }.to raise_error "It's empty"
    end
  end
end
