class Post 
  
  attr_accessor :title, :author
  
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
   
   def artist_name
     self.artist.name 
   end 
  
  def post_author(author_obj)
    @author << author_obj 
    author_obj.post = self 
  end
  
end 