class Author 
  
  @@post_count = 0
  
  attr_accessor :name,  
  
  def initialize(name)
    @name = name
  end 
  
  def posts 
    Post.all.select {|postt| postt.author == self}
  end
  
  def add_post(postt)
    postt.author = self 
    @@post_count += 1 
  end 
  
  
  def add_post_by_title(post_title)
    pos = Song.new(post_title)
    add_post(pos)
    @@post_count += 1 
  end 
  
  def self.post_count 
    @@post_count 
  end 
  
end