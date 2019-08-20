# This is a simple illustration of how the super keyword works
# flatiron's explanation is somewhat convoluted.

class Animal
  def name
    puts "Animal"
  end
end
class Cat < Animal
  def name
    super  #=> Cat inherits from Animal and can steal its 'name' method
  end
end
cat = Cat.new
cat.name