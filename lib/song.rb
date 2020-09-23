class Song 
  
   attr_accessor :title, :artist
   
   def song_artist(artist_obj)
    @artist << artist_obj 
    artist_obj.song = self 
  end
  
end 