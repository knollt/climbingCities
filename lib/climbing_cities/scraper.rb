class ClimbingCities::Scraper

attr_accessor :name, :desc
  
  # initiate the scrape  
  def self.today
    self.scrape_matador
  end   
  
  def self.scrape_matador
    doc = Nokogiri::HTML(open("https://matadornetwork.com/sports/17-worlds-best-cities-rock-climbers/"))
    doc.search("div.post-content h2").each do |city|
      # binding.pry
      ClimbingCities::Cities.new(city.text)
    end
    # binding.pry 
  end 
  
  def self.scrape_city_desc 
    # not working yet 
    doc = Nokogiri::HTML(open("https://matadornetwork.com/sports/17-worlds-best-cities-rock-climbers/"))
    doc.search("p").each do |desc|
      desc.text
    end   
  end 
  
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