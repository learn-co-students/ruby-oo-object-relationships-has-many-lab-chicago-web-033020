require 'pry'
require_relative 'song.rb'

class Artist
  attr_accessor :name, :songs, :song


  def initialize(name)
    @name = name
  end

  def songs
    Song.all.select do |song_obj|
      song_obj.artist == self
    end
  end

  def add_song(song)
    song.artist = self
  end

  def add_song_by_name(song_name)
    sad = Song.new(song_name)
    self.add_song(sad)
  end

  def self.song_count
    Song.all.length
  end

end
# adele = Artist.new("Adele")
# hello = Song.new("Hello")
# hello.artist = adele
# binding.pry