class ClimbingCities::CLI
  
  # start a new CLI session 
  def call 
    # call scrape
    list_cities
    menu
  end   
  
  
  #list climbing cities 
  def list_cities
    puts " "
    puts "Welcome climbing enthusiast."
    puts "Where would you like to explore today?"
    puts " "
    # load scrape
    # produce list of cities from scrape
  end 
  
  # print city information
  def menu
    input = nil
    while input != "quit"
      puts " "
      puts "Please enter the number of the city you would like to learn more about 1-17 and hit enter or list to see the list of cities again or type quit to exit."
      puts " "
      input = gets.strip.downcase  #get user input
        if input.to_i > 0 && input.to_i < 18
          # city = city info.
          puts " "
          # add any other information
          submenu
        elsif input == "list"
          list_cities
        else 
          goodbye
        end  
    end    
  end   
  
  # print continue or exit message
  def submenu
    inputted = nil
    puts " "
    puts "Would you like to see another city? Enter Y or N."
    puts " "
    inputted = gets.strip.downcase
    if inputted == "y" || "Y"
      list_cities
    elsif inputted == "n" || "N"
      goodbye
    else 
      puts "I don't understand your answer."
      submenu
    end   
  end
  
  # print exit message
  def goodbye
    puts " "
    puts "Thank you! Have a nice day and come back soon."
    puts " "
  end   
  
     
end  