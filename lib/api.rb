class API

  def self.get_jokes(type)
    url = "https://official-joke-api.appspot.com/jokes/#{type}/ten"
    uri = URI(url)
    response = Net::HTTP.get(uri)
    hash_of_jokes = JSON.parse(response)
    hash_of_jokes.each do |joke_hash|
        
        id = joke_hash["id"]
        kind = joke_hash["type"]
        question = joke_hash["setup"]
        punchline = joke_hash["punchline"]
        Joke.new(id, kind, question, punchline)

    end
  end

end
