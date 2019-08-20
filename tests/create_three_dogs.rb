
def create_three_dogs_test
  require_relative('../dog.rb')

  fido = Dog.new("Fido")
  fido.get_adopted("Sophie")
  opie = Dog.new("Opeous")
  opie.get_adopted("Maximus")
  lassie = Dog.new("Lissaneous")
  lassie.get_adopted("Sophie")

  csv_data = "Sparky,Lisa,Rover,Sophie,Olyeller,George"
  csv_data_array = csv_data.split(",").map(&:to_s)
  nested_array = csv_data_array.each_slice(2).to_a
  nested_array.collect do |i| 
    name = i[0]
    owner = i[1]
    dog = Dog.new(name)
    dog.get_adopted(owner)
    dog
  end 
  puts "Here are all the dogs created:"
  puts Dog.names
  puts " "
   puts "Here are all of the dog owners:"
  puts Dog.owners

  # puts fido.name
  # puts fido.bark
  # puts fido.showing_self
  # puts Dog.owners
  # puts Dog.owners_count
  # puts fido.dog_trick("Sit down boy")
  # puts Dog.all[0].object_id
  # puts Dog.find_by_name("Fido").object_id
  # puts Dog.all.count
end 

