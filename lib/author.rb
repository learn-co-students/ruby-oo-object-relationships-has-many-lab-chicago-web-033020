require 'pry'
require_relative 'post.rb'
class Author

  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def posts
    Post.all.select do |post_obj|
      post_obj.author == self
    end
  end

  def add_post(post)
    post.author = self
  end

  def add_post_by_title(post_title)
    sad = Post.new(post_title)
    self.add_post(sad)
  end

  def self.post_count
    Post.all.length
  end

end

# betty = Author.new("Betty")
# post = Post.new("My Post")
# post.author = betty

# binding.pry