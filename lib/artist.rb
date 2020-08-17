class Artist
  extends Concerns::Findable
  attr_accessor :name, :songs
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
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
  
  def self.create(name)
    artist = Artist.new(name)
    artist.save
    artist
  end
  
  def add_song(song)
    @songs << song unless @songs.include?(song)
    song.artist = self if song.artist == nil 
  end
  
    def genres 
    songs.map(&:genre).uniq 
  end
  
  

end