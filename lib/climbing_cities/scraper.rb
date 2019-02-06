class ClimbingCities::Scraper
  
  def self.scrape_today
    self.scrape_matador
  end   
  
  def self.scrape_matador
    site = Nokogiri::HTML(open("https://matadornetwork.com/sports/17-worlds-best-cities-rock-climbers/"))
    
  end 
  
end   