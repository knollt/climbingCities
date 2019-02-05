class climbingCities::CLI
  
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
  
  def menu
    
  end   
  
  # print submenu
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
  
  
  def goodbye
    puts " "
    puts "Thank you! Have a nice day and come back soon."
    puts " "
  end   
  
     
end  