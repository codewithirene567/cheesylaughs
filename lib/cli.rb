class CLI
  #interact with the user
  #include any puts or gets statements
  #control the flow of our program

  def start
    puts "Welcome"
    API.get_programming_jokes
    self.do_you_want_programming_joke
  end

  def do_you_want_programming_joke
    puts "Hey unhappy person I see that look on your face. You sure could go
    for a smile right now. Why don’t we make a cheese sandwhich with
    your smile in the middle and 2 jokes to be the bread pieces to hold it all
    together? We’ll ask you a few questions to get the right jokes for what you're in the mood for.
    Do you want to hear a joke that is about programming?"
    puts "It's going to be a yes or a no"
    user_input = gets.strip
    if user_input == "yes"
      puts "Ah wonderful choice, hope you work in software so that you can get these."
      display_programming_jokes
    else user_input == "no"
      puts "Okay let's try something else."
      self.do_you_want_knock_knock_joke
    end
  end

  def display_programming_joke
    Joke.all.each do |joke|
      puts joke
    end
  end

  def do_you_want_knock_knock_joke
    puts "Hmm what about a knock-knock joke?"
    user_input = gets.strip
    if user_input == "yes"
      puts "Glad we could find something you like, you'll be knocking on your friends' doors trying these"
      API.get_knock_knock_jokes
    else
      puts "Okay let's try something else."
      self.do_you_want_general_joke
    end
  end

  def do_you_want_general_joke
    puts "What about a joke that is about anything and everything?"
    if user_input == "yes"
      puts "Finally! Okay here they are..."
     API.get_general_jokes
    else
      puts "That's all we have. Try again later."
      #end program
    end
  end

end
