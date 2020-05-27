class CLI
  #interact with the user
  #include any puts or gets statements
  #control the flow of our program

  def start
    puts "Welcome"
    API.get_jokes
    self.feelings
  end

  def feelings
    puts "Do you want to hear a joke that relates to you feeling sad?"
    user_input = gets.strip
    if user_input == "yes"
      puts "Yes you do want to hear a 'sad' joke"
      displays_random_sad_jokes
    elsif
      #end the program
      puts "What about a joke that relates to you feeling angry?"
      displays_random_angry_jokes
    else
      puts "What about a joke that relates to you feeling confused?"
      displays_random_confused_jokes
    end

  end

  def displays_sad_jokes
    #access all the jokes
    #print 3 jokes
    Sad.all.each do |joke|
      puts joke.id
    end
  end

end
