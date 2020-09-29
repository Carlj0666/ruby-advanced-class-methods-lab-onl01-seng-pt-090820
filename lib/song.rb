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

  def self.new_file_from_filename(song)
    split_title = file_name.split(" - ")
    
    split_title.chomp(".mp3") #hardcode
    
    singer = split_title[0]
    track_name = split_title[2]
    
    new_song = Song.new
    song.name = track_name
    song.artist = singer
   # new_song
  end

end

end

  #   rows = csv_data.split("\n")
  #   people = rows.collect do |row|
  #     data = row.split(", ")
  #     name = data[0]
  #     age = data[1]
  #     company = data[2]
 
  #     person = self.new # This is an important line.
  #     person.name = name
  #     person.age = age
  #     person.company = company
  #     person
  #   end
  #   people
  # end
  
