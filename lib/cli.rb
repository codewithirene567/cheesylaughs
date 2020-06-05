class CLI

  def start
    puts "Welcome"
    API.get_jokes("programming")
    API.get_jokes("knock-knock")
    API.get_jokes("general")
    self.introduction
  end

  def display_joke(type)
      joke = Joke.jokes_instance(type).sample
      self.display_joke_full(joke)
    end

    def display_joke_full(joke)
      puts joke.question
      sleep(2)
      puts joke.punchline
    end

  def introduction
      puts "Hey unhappy person I see that look on your face. You sure could go
      for a smile right now. Why don’t we make some cheese toast with
      your smile on the top and a joke to be the foundation for it?
      We’ll ask you a few questions to get the right jokes for what you're
      in the mood for. Please select the number which represents the category of jokes
      you want to hear.

      1. Programming
      2. Knock-knock
      3. General"
      user_input = gets.strip
      if user_input == "1"
        do_you_want_programming_joke
      elsif user_input == "2"
        do_you_want_knock_knock_joke
      elsif user_input == "3"
        do_you_want_general_joke
      else
        puts "Okay looks like we are starting over. Please pick something once this loads."
        sleep(3)
        introduction
      end
   end

  def do_you_want_programming_joke
    puts "Do you want to hear a joke that is about programming?"
    puts "It's going to be a yes or a no"
    user_input = gets.strip
    if user_input == "yes"
      puts "Ah wonderful choice, hope you work in software so that you can get this one."
      display_joke("programming")
      do_you_want_to_hear_another_joke
    else
      puts "Okay let's try something else."
      do_you_want_knock_knock_joke
    end
  end

  def do_you_want_knock_knock_joke
    puts "Hmm a knock-knock joke?"
    puts "It's going to be a yes or a no"
    user_input = gets.strip
    if user_input == "yes"
      puts "Glad we could find something you like, you'll be knocking on your friends' doors trying this..."
      display_joke("knock-knock")
      do_you_want_to_hear_another_joke
    else
      puts "Okay let's try something else."
      do_you_want_general_joke
    end
  end

  def do_you_want_general_joke
    puts "What about a joke that is about anything and everything?"
    puts "It's going to be a yes or a no"
    user_input = gets.strip
    if user_input == "yes"
      puts "Finally! Okay here's one..."
      display_joke("general")
      do_you_want_to_hear_another_joke
   else
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
    else
       puts "Have a nice day with a nice smile."
    end
    end

end
