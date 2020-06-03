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
        #joke_instance = Joke.new
        id = joke_hash["id"]
        kind = joke_hash["type"]
        question = joke_hash["setup"]
        punchline = joke_hash["punchline"]
        Joke.new(id, kind, question, punchline)

        #joke_instance.id = joke_hash["id"]
        #joke_instance.kind = joke_hash["type"]
        #joke_instance.question = joke_hash["setup"]
        #joke_instance.punchline = joke_hash["punchline"]
    end
  end
#returns the array hash_of_jokes that was called upon

end
