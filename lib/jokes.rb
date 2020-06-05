class Joke

attr_accessor :id, :kind, :question, :punchline

  @@all = []

  def initialize(id, kind, question, punchline)
    @id = id
    @kind = kind
    @question = question
    @punchline = punchline
    @@all << self
  end
#create an instance method for the joke class that will change the punchline in some way, change the jokes punchline so that you replace all of the ls with
#exclamation marks, call it punchline, if punchline does not have any l's in it then 3 exclaimation marks at the end of the line

def special_punchline
  if punchline.include? "l"
    punchline.gsub("l", "!")
  else
    punchline + "!!!" "#{punchline}"
  end
end

  def self.all
    @@all
  end

  def self.jokes_instance(type)
    all.select do |joke_instance|
      joke_instance.kind == type
      end
  end

end
