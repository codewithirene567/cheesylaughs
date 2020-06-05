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

  def self.all
    @@all
  end

  def self.jokes_instance(type)
    all.select do |joke_instance|
      joke_instance.kind == type
      end
  end

end
