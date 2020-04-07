#A song should belong to an artist.
class Song
  attr_accessor :artist, :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def artist_name
    artist.name if artist  #方法1
    #self.artist.name if self.artist #方法2
  #   if self.artist  #方法3
  #    self.artist.name
  #  else
  #    nil
  #  end
  end
end
