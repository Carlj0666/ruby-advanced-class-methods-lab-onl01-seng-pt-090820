require"pry"

class Song
  attr_accessor :name, :artist_name
  @@all = []
  
  
  def self.all
    @@all
  end

  def save
    self.class.all << self
    self
  end

  def self.create
    song = Song.new
    song.save
  end
  
  def self.new_by_name(name)
    binding.pry
    name = Song.new
    self
  end

end
