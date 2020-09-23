class Song 
  
   attr_accessor :name, :artist
   
   @@all = []
   
   def initialize(name)
     @name = name 
     save
   end 
   
   def save
     @@all << self
   end 
   
   def song_artist(artist_obj)
    @artist << artist_obj 
    artist_obj.song = self 
  end
  
end 