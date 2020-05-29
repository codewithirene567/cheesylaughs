class Joke
  #keep track of joke attributes and save all jokes created
attr_accessor :id, :kind, :question, :punchline
#from the json response after we use pry put the attributes here i.e. :name, :category
  @@all = []

  def initialize
    @@all << self
  end

  def self.all
    @@all
  end

  #add some class methods to the Joke class -

  #Essentially, you’ll need to use the .find_all or .select method
  #on ALL of the jokes to just select programming ones

#self.get jokes, pass in the argument for what type it is
 def self.programming
  all.select do |joke_instance| #this has to match with the something.kind
    joke_instance.kind == "programming"
    end
  end

  def self.knock_knock
   all.select do |knocking_joke_instance|
     knocking_joke_instance.kind == "knock-knock"
     end
   end

  def self.general
    all.select do |general_joke_instance|
      general_joke_instance.kind == "general"
      end
    end

end
