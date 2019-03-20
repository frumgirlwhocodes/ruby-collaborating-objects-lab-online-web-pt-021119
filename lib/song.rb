class Song 
<<<<<<< HEAD
  attr_accessor :name, :artist
=======
  attr_accessor :name, :artist, :genre
>>>>>>> 73dbe774819d3ad0fd10af113537bcc545438e78

   def initialize(name)
    @name=name 
    @artist=artist
  end

<<<<<<< HEAD
    def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end
  def self.new_by_filename(file)
    song_name = file.split(" - ")[1]
    artistname = file.split(" - ")[0]
    song = self.new(song_name)
    song.artist_name = artistname
    song
  end
end 
=======
    def self.new_by_filename(filename)
    artist, song = filename.split(" - ")
    new_song = self.new(song)
    new_song.artist_name = artist
    new_song
  end

   def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end
>>>>>>> 73dbe774819d3ad0fd10af113537bcc545438e78
