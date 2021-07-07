#An author should have many posts

class Author
  attr_accessor :name

  @@all=[]

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def posts
    Post.all.select {|post| post.author == self}
  end

  def add_post(post)
    post.author = self
  end

  # def title
  #     post.title
  # end

#add_song_by_name method should take in an argument of a name to create a new song and then associate the objects.
  def add_post_by_title(title)
    title = Post.new(title) #to create a new song
    title.author = self #associate the objects.
  end

#returns the total number of songs that have been created
  def self.post_count
    Post.all.length
  end
end
