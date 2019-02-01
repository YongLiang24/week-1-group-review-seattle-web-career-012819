require "pry"
# begin to build a simple program that models Instagram
# you should have a User class, a Photo class and a comment class
class User
  attr_accessor :name
  def initialize(name)
    @name = name
  end
  def comments
    Comments.all.select do |com|
      com.user == self
    end
  end
  def self.photos
    Photo.all
  end
end
class Comments
  attr_reader :photo, :text
  @@all = []
  def initialize(photo, text)
    @photo = photo
    @text = text
    @@all << self
  end
  def self.all
    @@all
  end
end
class Photo
  attr_accessor :user
  @@all = []
  def initialize
    @@all << self
  end
  def self.all
    @@all
  end
  def comments
    Comments.all.select do |com|
      com.photo == self
    end
  end
  def make_comment(text)
    com = Comments.new(self, text)
  end
end
sandwich_photo = Photo.new
sophie = User.new("Sophie")
sandwich_photo.user = sophie
sandwich_photo.user.name
# => "Sophie"
#binding.pry
puts "photo test: #{User.photos}"

# => [#<Photo:0x00007fae2880b370>]
puts "comments: #{sandwich_photo.comments}"
# # => []
puts sandwich_photo.make_comment("this is such a beautiful photo of your lunch!! I love photos of other people's lunch")
puts sandwich_photo.comments
# # => [#<Comment:0x00007fae28043700>]
puts Comments.all
# #=> [#<Comment:0x00007fae28043700>]
