class CLI
  #interact with the user
  #include any puts or gets statements
  #control the flow of our program

  def start
    puts "Welcome"
    API.get_programming_jokes
    API.get_knock_knock_jokes
    API.get_general_jokes
    self.do_you_want_programming_joke
  end

  def display_programming_joke
     joke = Joke.programming.sample
     puts joke.question
     puts joke.punchline
#sleep
     #Joke.programming.each do |joke|
  end

  def display_knock_knock_joke
     joke = Joke.knock_knock.sample
#The problem is whenever I try to get it to use a knock knock jokes it will not display anything whether it is a
#yes or a no, I think it is because it is pulling it out of the programming url not the knock knock url
     puts joke.question
     puts joke.punchline
  end

  def display_general_joke
     joke = Joke.general.sample
     puts joke.question
     puts joke.punchline
  end

  def do_you_want_programming_joke
    puts "Hey unhappy person I see that look on your face. You sure could go
    for a smile right now. Why don’t we make a cheese sandwhich with
    your smile in the middle and 2 jokes to be the bread pieces to hold it all
    together? We’ll ask you a few questions to get the right jokes for what you're
    in the mood for. Do you want to hear a joke that is about programming?"
    puts "It's going to be a yes or a no"
    user_input = gets.strip
    if user_input == "yes"
      puts "Ah wonderful choice, hope you work in software so that you can get these."
      display_programming_joke
    else user_input == "no"
      puts "Okay let's try something else."
      do_you_want_knock_knock_joke
    end
  end


  def do_you_want_knock_knock_joke
    puts "Hmm what about a knock-knock joke?"
    user_input = gets.strip
    if user_input == "yes"
      puts "Glad we could find something you like, you'll be knocking on your friends' doors trying these"
      display_knock_knock_joke
    else user_input == "no"
      puts "Okay let's try something else."
      do_you_want_general_joke
    end
  end

  def do_you_want_general_joke
    puts "What about a joke that is about anything and everything?"
    user_input = gets.strip
    if user_input == "yes"
      puts "Finally! Okay here they are..."
      display_general_joke
   else user_input == "no"
      puts "That's all we have. Try again later."
      #end program
    end
  end

end
