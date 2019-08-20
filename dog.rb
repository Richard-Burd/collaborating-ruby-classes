class Dog
  attr_accessor :name, :owner
  @@knine_count = 0 
  @@alldogs
  @@all = []

  def self.all
    @@all
  end

  def self.find_by_name(name)
    @@all.find{|dog| dog.name == name}
  end

  def self.count
    @@knine_count
  end

  def initialize(name)
    @name = name
    @@knine_count += 1
    @@all << self
  end

  @@knineowners = []

  def self.owners
    @@knineowners.uniq
  end 

  def self.owners_count
    @@knineowners.inject(Hash.new(0)) {|total, i| total[i] += 1; total}.count
  end 

  def get_adopted(owner_name)
    self.owner = owner_name
    @@knineowners << owner_name
  end
end