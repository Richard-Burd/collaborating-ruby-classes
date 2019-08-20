require_relative('./accoutrements.rb')
require_relative('./paperwork_module.rb')

class Dog < Accoutrements
  include PaperWork 
  attr_accessor :name, :owner
  # @@knine_count = 0           <=# ABSTRACTION 
  @@alldogs
  @@all = []

  def self.all
    @@all
  end

  def self.find_by_name(name)
    @@all.find{|dog| dog.name == name}
  end

  # def self.count
  #   @@knine_count
  # end

  def initialize(name)
    @name = name
    # @@knine_count += 1        <=# ABSTRACTION 
    # @@all << self             <=# ABSTRACTION 
    self.class.all << self
  end
 
  def bark
    "Woof!"
  end
 
  def showing_self
    puts self
  end

    @@knineowners = []

  def self.owners
    @@knineowners.uniq
  end 

  def self.names
    @@all.collect{|dog| dog.name}
  end 

  def self.owners_count
    #=> Simple use of inject method 
    #   [5].inject(10) { |result, element| result + element }
    @@knineowners.inject(Hash.new(0)) {|total, i| total[i] += 1; total}.count
    #=> Simple counting of unique keys in a hash:
    #   hasher = {"Sophie"=>2, "Maximus"=>1, "Gielead"=>34}
    #   hasher.count
  end 

  def get_adopted(owner_name)
    self.owner = owner_name
    @@knineowners << owner_name
  end

  def dog_trick(owner_command) 
    receive_input(owner_command)
    internal_processing(owner_command)
    give_output(owner_command = nil)
  end 

  private 

  def receive_input(var)
    puts "My owner says: #{var}"
  end 

  def internal_processing(var)
    puts "I don't know what #{var} means!"
  end 

  def give_output(var)
    puts "I will just smile!"
  end
end