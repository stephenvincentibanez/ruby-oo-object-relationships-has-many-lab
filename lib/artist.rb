require 'pry'

class Artist

def self.song_count
    Song.all.count
end 

attr_accessor :name, :songs

@@all = []

def initialize(name)
    @name = name
end 

def songs
   Song.all.select { |song| song.artist = self}
end 

def add_song(song)
    song.artist = self
end 

def add_song_by_name(name)
    song = Song.new(name)
    self.songs << song
    add_song(song)
end 

end