require_relative '../setup'
require_relative './exercise_1'

puts 'Exercise 2'
puts '----------'

# Your code goes here ...

#load the first store (with id = 1) from the database and assign it to an instance variable @store1
@store1 = Store.find_by(id: 1)

p @store1

puts '------------'
#load the second store from the database and assign it to @store2
@store2 = Store.find_by(id: 2)

p @store2

puts '------------'
#update the first store (@store1) instance in the database. (Change its name or something)
@store1.update(name: 'New Fashion')

puts '**************'
p @store1
