class Song 

  attr_accessor :name, :artist

  attr_accessor :name, :artist, :genre


   def initialize(name)
    @name=name 
    @artist=artist
end 


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

   

  