class Post 
  
  attr_accessor :title, :author
  
  def post_author(author_obj)
    @author << author_obj 
    author_obj.post = self 
  end
  
end 