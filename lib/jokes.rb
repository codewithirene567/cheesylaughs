class Joke
  #keep track of joke attributes and save all jokes created
attr_accessor :id, :kind, :question, :punchline
#giving us access to other places in the program because of the setter and getter methods, we can access the value through methods
#def id
#  @id
  #end
#def id=(id)
#  @id=id
#end
#from the json response after we use pry put the attributes here i.e. :name, :category
  @@all = []

  def initialize(id, kind, question, punchline)
    @id = id
    @kind = kind
    @question = question
    @punchline = punchline
    @@all << self
  end

  def self.all
    @@all
  end
#any instance variable can be accessed by an instance method, cannot be accessed in a class method
  #add some class methods to the Joke class -

  #Essentially, you’ll need to use the .find_all or .select method
  #on ALL of the jokes to just select programming ones

#self.get jokes, pass in the argument for what type it is
  def self.jokes_instance(type)
    all.select do |joke_instance| #this has to match with the something.kind
      joke_instance.kind == type
      end
  end
#going to find the right type of joke through the argument and then
 #def self.programming
  # type == "programming"
  # self.jokes
  #all.select do |joke_instance| #this has to match with the something.kind
    #joke_instance.kind == "programming"

  #end

  #def self.knock_knock
   #type == "knock-knock"
  # self.jokes
   #all.select do |knocking_joke_instance|
     #knocking_joke_instance.kind == "knock-knock"
     #end
  # end

  #def self.general
  #  type == "general"
  #  self.jokes
    #all.select do |general_joke_instance|
      #general_joke_instance.kind == "general"
    #  end
  #  end
  #end
end
