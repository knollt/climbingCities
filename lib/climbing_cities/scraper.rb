class ClimbingCities::Scraper

attr_accessor :name, :desc
  
  # initiate the scrape  
  def self.today
    # should return bunch of instances of cities
    puts "1. Turkey"
    puts "2. Oregon "
    
    city_1 = self.new
    city_1.name = "1. Turkey"
    city_1.desc = "Great climbing routes."
    
    city_2 = self.new
    city_2.name = "2. Oregon"
    city_2.desc = "Great boulding climbing."
    
    [city_1, city_2]
    
    # self.scrape_matador
  end   
  
  # create new city objects from scraped data 
  # def self.scrape_matador(url)
  #   # site = Nokogiri::HTML(open("https://matadornetwork.com/sports/17-worlds-best-cities-rock-climbers/"))
  #   site = Nokogiri::HTML(open(url))
  #   binding.pry
  #   # city = site.css("h2").text
  #   # city.each do |city|
  #   #   binding.pry
  #   # end  
  # end 
  
end   

      # case i 
      # when i == 0 
      #   city[1] # Turkey
      # when i == 1
      #   city[2]
      # when i == 2
      #   city[3]  
      # when i == 3
      #   city[4]
      # when i == 4
      #   city[5]
      # when i == 5 
      #   city[6]         
      # when i == 6 
      #   city[7] 
      # when i == 7 
      #   city[8] 
      # when i == 8
      #   city[9] 
      # when i == 9
      #   city[10] 
      # when i == 10
      #   city[11] 
      # when i == 11
      #   city[12] 
      # when i == 12
      #   city[13] 
      # when i == 13
      #   city[14] 
      # when i == 14
      #   city[15] 
      # when i == 15
      #   city[16]
      # when i == 16
      #   city[17] 
      # else 
      #   puts "Invalid number. Please enter 1-17."
      # end   