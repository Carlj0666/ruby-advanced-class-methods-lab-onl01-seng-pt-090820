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

    song = Song.new
    song.name = name
    song
  end

  def self.create_by_name(name)
    song = Song.new
    song.name = name
    song.save
    song
  end
  
  def self.find_by_name(name)

    self.all.find{|song| song.name == name}
  end

  def self.find_or_create_by_name(name)
        binding.pry
    if self.find_by_name
    self.name
    else
    self.create_by_name

  end
      self.name
end

end
