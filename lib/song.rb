
    attr_reader :artist, :genre

    def initialize(name, artist=nil, genre=nil)
     @name = name
     self.artist = artist if artist != nil
     self.genre = genre if genre != nil
   end

    def self.create(name)
     instance = Song.new(name)
     instance.save
     instance
   end

    def artist=(artist)
     @artist = artist
     self.artist.add_song(self)
   end

    def genre=(genre)
     @genre = genre
     self.genre.add_song(self)
   end
 end
