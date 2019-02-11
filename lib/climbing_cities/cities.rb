class ClimbingCities::Cities
  
  # create reader/writer methods/attributes or properties for each climbing city 
  attr_accessor :name, :desc
  
  
  @@all = []
  
  
  # initialize a city instance with properties and add to @@all array
  def initialize (name, location)
    @name = name
    @desc = desc
    @@all << self 
  end
  
  # call all city objects
  def self.all
    @@all  
  end 
  
end   