class Post 
  
  attr_accessor :name, :author
  
   @@all = []
   
   def initialize(name)
     @name = name 
     save
   end 
   
   def title=(title)
     @title = title
   end 
   
   def title
     @title
   end 
   
   def save
     @@all << self
   end 
   
   def self.all 
     @@all
   end 
   
   def author_name
     self.author.name 
   end 
  
  def post_author(author_obj)
    @author << author_obj 
    author_obj.post = self 
  end
  
end 