require "pry"
class API
  #make calls to API

  def self.get_jokes
    url = "https://official-joke-api.appspot.com/jokes/programming/ten"
    uri = URI(url)
    response = Net::HTTP.get(uri)
    hash = JSON.parse(response)

    hash_of_jokes = hash

    hash_of_jokes.each do |joke_hash|
    joke_instance = Joke.new

    joke_instance.id = hash
    joke_instance.kind = hash
    joke_instance.question = hash
    joke_instance.punchline = hash
    #id => "id"
    #kind of joke => "type"
    #question => "setup"
    #punchline => "punchline"



#initialize a new joke
#assign attributes to it
  end
  end

end
