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
   
   def self.all 
     @@all
   end 
   
   def artist_name(name_obj)
    @artist << name_obj 
    name_obj.song = self 
  end
  
    
  
end 