class Author 
  
  @@post_count = 0
  
  attr_accessor :name, :post 
  
  def initialize(name)
    @name = name
  end 
  
  def posts 
    Post.all.select {|pos| pos.author == self}
  end
  
  def add_post(pos)
    pos.author = self 
    @@post_count
  end 
  
  
  def add_post_by_title(post_title)
    pos = Song.new(post_title)
    add_post(pos)
  end 
  
  def self.post_count 
    @@all = posts 
  end 
  
end