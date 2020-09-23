class Author 
  
  attr_accessor :name, :post 
  
  def initialize(name)
    @name = name
  end 
  
  def posts 
    Post.all.select {|pos| pos.author == self}
  end
  
  def add_post(pos)
    pos.author = self 
  end 
  
  
  def add_post_by_title(post_title)
    posts = Song.new(song_name)
    add_song(song)
  end 
  
  def self.post_count 
    @@all = posts 
  end 
  
end