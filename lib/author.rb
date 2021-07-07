class Author

  attr_accessor :name, :post

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def posts
    Post.all.select do |title|
      title.author == self
    end
  end

  def add_post(post)
    post.author = self
  end

  def add_post_by_title(title)
    title = Post.new(title)
    title.author = self
  end

  def self.post_count
    Post.all.count
  end

  def title
    post.title
  end

end