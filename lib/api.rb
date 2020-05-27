require "pry"
class API
  #make calls to API

  def self.get_jokes
    url = "https://official-joke-api.appspot.com/jokes/programming/ten"
    uri = URI(url)
    response = Net::HTTP.get(uri)
    hash_of_jokes = JSON.parse(response)



    hash_of_jokes.each do |joke_hash|
        joke_instance = Joke.new

        joke_instance.id = joke_hash["id"]
        joke_instance.kind = joke_hash["type"]
        joke_instance.question = joke_hash["setup"]
        joke_instance.punchline = joke_hash["punchline"]
    #name of hash[:key]
    #id => "id"
    #kind of joke => "type"
    #question => "setup"
    #punchline => "punchline"



#initialize a new joke
#assign attributes to it
#repeat above method with a different url
    end
  end

end
