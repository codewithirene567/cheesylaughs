require "pry"
class API
  #make calls to API

  def self.get_jokes
    url = "https://github.com/15Dkatz/official_joke_api/blob/master/jokes/index.json"
    uri = URI(url)
    response = Net::HTTP.get(url)
    hash = JSON.parse(response)

    #****tried to run ruby bin/start, also not saving my new information

    something here then each do |variable|
      #initialize a new jokes
      new_instance = Joke.new
      # assign attributes to it
      #this is where you put the stuff from the api
      new_instance.id = (hash of elements)[]
  end

end
