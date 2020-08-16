class Song
  
  attr_accessor :name
  attr_reader :artist, :genre
  
  @@all = []
  
  def initialize(name, artist=nil,genre=nil)
    @name = name
    self.artist = artist if artist
    self.artist = artist if artist
  end
  
  def self.all
    @@all
  end
  
  def self.destroy_all
    @@all.clear
  end
  
  def save
    @@all << self
  end
  
  def self.create(name, artist=nil, genre=nil)
    song = Song.new(name, artist, genre)
    song.save
    song
  end
  
  def artist=(artist)
    @artist = artist
    artist.add_song(self)
  end
  
end