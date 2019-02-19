class ClimbingCities::CLI
  
  # start a new CLI session 
  def call
    ClimbingCities::Scraper.today
    greeting
    menu
  end   
  
  
  #greet user and list climbing cities 
  def greeting
    puts " "
    puts "Welcome climbing enthusiast."
    puts "Where would you like to explore today?"
    puts " "
    puts "List of Cities:"
    list_cities
  end 
  
  # print city information
  def menu
    input = nil
    while input != "exit"
      puts " "
      puts "Would you like to learn more about the city?  If yes, please type yes and hit enter.  If you would like to see to the list of cites again, please type list.  Otherwise, type exit."
      puts " "
      input = gets.strip.downcase  #get user input
          
        if input == "yes"
            choose_city
        elsif input == "list"
            list_cities
        elsif input == "exit"
            goodbye
        else 
          puts "Entry Invalid"
          menu 
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
      menu
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
  
  def choose_city
    puts " "
    puts "Please enter the number of the city you would like to learn more about 1-17 and hit enter."
    puts " "
    
    input = gets.strip.to_i 
    if input.between?(1,17)
      category = input-1
      display_city_desc (category)
      submenu
    end 
  end 
 
  
  def list_cities
    ClimbingCities::Cities.all.each.with_index(1) do |city, i|
      print "#{i}. #{city.name}"
      puts " "
    end 
  end 
  
  def display_city_desc (category)
    ClimbingCities::Scraper.scrape_city_desc
  end   
  
end  