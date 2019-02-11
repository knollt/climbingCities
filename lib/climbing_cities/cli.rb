class ClimbingCities::CLI
  
  # start a new CLI session 
  def call
    list_cities
    menu
  end   
  
  
  #list climbing cities 
  def list_cities
    puts " "
    puts "Welcome climbing enthusiast."
    puts "Where would you like to explore today?"
    puts " "
    puts "List of Cities:"
    # produce list of cities
    @city = ClimbingCities::Scraper.cities
  
    @city.each.with_index(1) do |city, i|
      binding.pry 
      puts "#{i}. #{city.name}"
    end   
  end 
  
  # print city information
  def menu
    input = nil
    while input != "exit"
      puts " "
      puts "Please enter the number of the city you would like to learn more about 1-17 and hit enter or type list to see the list of cities again or type exit."
      puts " "
      input = gets.strip.downcase  #get user input
          
          if input.to_i > 0 && input.to_i < 18
            puts @city[input.to_i-1]
            # binding.pry 
            submenu
        elsif input == "list"
            list_cities
        else input == "exit"
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
    if inputted == "y" || inputted == "Y"
      list_cities
    elsif inputted == "n" || inputted == "N" # ISSUE prints "please enter # of city" still need to input = exit to exit
      # goodbye
      puts "Thanks, please type exit."
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