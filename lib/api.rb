require "pry"
class API
  #make calls to API

  def self.get_jokes(type)
    #type = "programming"
    #type = "knock-knock"
    #type = "general"
    url = "https://official-joke-api.appspot.com/jokes/#{type}/ten"
    uri = URI(url)
    response = Net::HTTP.get(uri)
    hash_of_jokes = JSON.parse(response)
    hash_of_jokes.each do |joke_hash|
        joke_instance = Joke.new
        joke_instance.id = joke_hash["id"]
        joke_instance.kind = joke_hash["type"]
        joke_instance.question = joke_hash["setup"]
        joke_instance.punchline = joke_hash["punchline"]
    end
  end

  def self.get_programming_jokes
    type = "programming"
    url = "https://official-joke-api.appspot.com/jokes/programming/ten"
    self.get_jokes(type)
    #name of hash[:key]
    #id => "id"
    #kind of joke => "type"
    #question => "setup"
    #punchline => "punchline"
#initialize a new joke
#assign attributes to it
#repeat above method with a different url

  end

  def self.get_knock_knock_jokes
    type = "knock-knock"
    url = "https://official-joke-api.appspot.com/jokes/knock-knock/ten"
    self.get_jokes(type)
  end

  def self.get_general_jokes
    type = "general"
    url = "https://official-joke-api.appspot.com/jokes/general/ten"
    self.get_jokes(type)
  end

end
