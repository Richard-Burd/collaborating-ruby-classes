# This workspace is currently being ran on repl.it rather than locally.
# This is a good way to mess with code when you don't have your IDE handy.

require_relative('./dog.rb')
require_relative('./bird.rb')
require_relative('./owner.rb')

# Use this to install any Ruby gems you need.
# require_relative('./gems.rb') 

# require_relative('./tests/create_three_dogs.rb')
# create_three_dogs_test



fido = Dog.new("Fido")
odie = Dog.new("Odie")
suzan = Owner.new("Suzan")

fido.owner = suzan
odie.owner = suzan
suzan.add_dog(fido)
suzan.add_dog(odie)

# puts fido.owner.name
# puts suzan.dogs[0].name
# puts Owner.all

suzan.dogs.collect {|i| puts "Suzan cares for #{i.name}"}

puts fido.dog_leash
puts fido.birth_certificate

pet_bird_from_hash = {name: "Tweety", owner: "Titus"}

tweety = Bird.new(pet_bird_from_hash)
puts "A new bird named #{tweety.name} owned by #{tweety.owner} was created from a hash"
