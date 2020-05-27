require "pry"
class API
  #make calls to API

  def self.get_jokes
    url = "https://official-joke-api.appspot.com/jokes/programming/ten"
    uri = URI(url)
    response = Net::HTTP.get(url)
    JSON.parse(response)
    # something here then each do |variable|
    #   initialize a new jokes
    #   new_instance = Joke.new
    #    assign attributes to it
    #   this is where you put the stuff from the api
    #   new_instance.id = (hash of elements)[]
    #****tried to run ruby bin/start, also not saving my new information
  binding.pry

  end

end
