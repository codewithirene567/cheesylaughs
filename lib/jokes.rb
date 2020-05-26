class Joke
  #keep track of joke attributes and save all jokes created
  attr_accessor :#from the json response after we use pry put the attributes here i.e. :name, :category
  @@all = []
  def initialize
    @@all << self
  end

  def self.all
    @@all
  end

end
