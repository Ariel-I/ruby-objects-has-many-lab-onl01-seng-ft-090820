class Author 
  
  attr_accessor :name, :post 
  
  def initialize(name)
    @name = name
  end 
  
  def posts 
    Post.all.select {|posts| posts.author == self}
  end
  
  def add_post(posts)
    postt.author = self 
  end 
  
  
  def add_post_by_name(post_name)
    postt = Song.new(post_name)
    add_postt(postt)
  end 
  
  def self.song_count 
    @@all = songs 
  end 
  
end