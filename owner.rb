class Owner
  attr_accessor :name, :dog
 
  @@all = []

  def initialize(name, dog = nil) 
    @name = name
    @dog = dog
    @dogs = []
  end

  def save
    @@all << self
  end

  def add_dog(dog)
    @dogs << dog
  end
 
  def dogs
    @dogs
  end

  def self.all
    @@all
  end

end