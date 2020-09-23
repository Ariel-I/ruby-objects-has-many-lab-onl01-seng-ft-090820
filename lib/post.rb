class Post 
  
  attr_accessor :name, :author
  
  attr_reader :title 
  
   @@all = []
   
   def initialize(name)
     @name = name 
     @title = title
     save
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