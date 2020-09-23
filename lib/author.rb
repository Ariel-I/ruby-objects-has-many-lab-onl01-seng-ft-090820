class Author 
  
  attr_accessor :name, :post 
  
  def initialize(name)
    @name = name
  end 
  
  def posts 
    Post.all.select {|posts| posts.author == self}
  end
  
  def add_post(posts)
    posts.author = self 
  end 
  
  
  def add_post_by_title(post_title)
    posts = Song.new(post_title)
    add_post(posts)
  end 
  
  def self.post_count 
    @@all = posts 
  end 
  
end