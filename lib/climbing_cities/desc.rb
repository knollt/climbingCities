class ClimbingCities::Desc 
  
  attr_accessor :desc 
  
  @@all = []
  
  def initialize (desc)
    @desc = desc 
    @@all << self
  end 
  
  def self.all
    @@all  
  end   
  
  # def city_info
  #   @@all.each do |c|
  #     binding.pry 
  #   end   
  # end   
  
end 
