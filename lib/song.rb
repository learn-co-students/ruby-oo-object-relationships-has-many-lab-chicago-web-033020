class Song
  attr_reader :name
  attr_accessor :artist
@@all = []
  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def artist_name
    if self.artist == nil
      return nil
    else
      self.artist.name
    end
  end

end
