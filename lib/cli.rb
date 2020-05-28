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
     sleep(2)
     puts joke.punchline
#sleep
     #Joke.programming.each do |joke|
  end
#find a way to make it not repetitive
  def display_knock_knock_joke
     joke = Joke.knock_knock.sample
     puts joke.question
     sleep(2)
     puts joke.punchline
  end

  def display_general_joke
     joke = Joke.general.sample
     puts joke.question
     sleep(2)
     puts joke.punchline
  end

  def do_you_want_programming_joke
    puts "Hey unhappy person I see that look on your face. You sure could go
    for a smile right now. Why don’t we make some cheese toast with
    your smile on the top and a joke to be the foundation for it.
    We’ll ask you a few questions to get the right jokes for what you're
    in the mood for. Do you want to hear a joke that is about programming?"
    puts "It's going to be a yes or a no"
    user_input = gets.strip
    if user_input == "yes"
      puts "Ah wonderful choice, hope you work in software so that you can get these."
      display_programming_joke
      do_you_want_to_hear_another_joke
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
      do_you_want_to_hear_another_joke
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
      do_you_want_to_hear_another_joke
   else user_input == "no"
      puts "The joke's on you then! You're getting a smile today whether you like it or not!"
      sleep(3)
      repeat_it_till_joke
    end
  end

  def repeat_it_till_joke
    puts "We're going to try this again."
    sleep(3)
      do_you_want_programming_joke
  end

  def do_you_want_to_hear_another_joke
    puts "Do you want to hear another joke?"
    user_input = gets.strip
    if user_input == "yes"
      do_you_want_programming_joke
    else user_input == "no"
       puts "Have a nice day with a nice smile."
    end
    end
    #ask them the question
    #if they say yes it is going to send them to do you want programming joke
    #no then goodbye message
    #call this method anytime you display a joke
end
