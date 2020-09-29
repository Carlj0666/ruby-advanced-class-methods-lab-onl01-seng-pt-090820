require'pry'

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
    @@all.find{|song| song.name == name}
  end

  def self.find_or_create_by_name(name)
    self.create_by_name(name)
    self.find_by_name(name)
  end

  def self.alphabetical
    @@all.sort_by{|song| song.name}
  end

  def self.new_from_filename(song)
    split_title = song.split(" - ")
    
    split_title.chomp(".mp3") #hardcode
    
    artist_name = split_title[0]
    title = split_title[2]
    
    new_song = Song.new
    song.name = title
    song.artist = artist_name
  end
    new_song
    end
  end
end
