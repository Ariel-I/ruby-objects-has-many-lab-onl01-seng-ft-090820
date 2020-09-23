class Author 
  
  @@post_count = 0
  
  attr_accessor :name,  
  
  def initialize(name)
    @name = name
  end 
  
  def posts 
    Post.all.select {|postt| postt.author == self}
  end
  
  def add_post(posts)
    postt.author = self 
    @@post_count += 1 
  end 
  
  
  def add_post_by_title(post_title)
    postt = Song.new(post_title)
    add_post(postt)
    @@post_count += 1 
  end 
  
  def self.post_count 
    @@post_count 
  end 
  
end