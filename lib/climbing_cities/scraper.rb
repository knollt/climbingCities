class ClimbingCities::Scraper
  
  # initiate the scrape  
  def self.scrape_today
    self.scrape_matador
  end   
  
  # create new city objects from scraped data 
  def self.scrape_matador
    site = Nokogiri::HTML(open("https://matadornetwork.com/sports/17-worlds-best-cities-rock-climbers/"))
    city = site.css("h2")
    city.each do |city,i|
      binding.pry
        
    end  
  end 
  
end   