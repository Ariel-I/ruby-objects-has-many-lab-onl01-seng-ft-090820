class Author 
  
  attr_accessor :name, :post 
  
  def initialize(name)
    @name = name
  end 
  
  def posts 
    Post.all.select {|song| song.artist == self}
  end
  
  def add_song(song)
    song.artist = self 
  end 
  
  
  def add_song_by_name(song_name)
    song = Song.new(song_name)
    add_song(song)
  end 
  
  def self.song_count 
    @@all = songs 
  end 
  
end