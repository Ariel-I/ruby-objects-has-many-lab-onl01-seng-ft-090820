class Post 
  
  attr_accessor :name, :title, :author
  
  
   @@all = []
   
   def initialize(name, author=nil)
     @name = name 
     @author = author
     save
   end 
   
   def save
     @@all << self
   end 
   
   def self.all 
     @@all
   end 
   
   def author_name
     if self.author
       self.author.name 
     else 
       nil 
     end 
   end 
  
  
end 