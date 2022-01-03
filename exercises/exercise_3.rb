require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts 'Exercise 3'
puts '----------'

# Your code goes here ...
# 1. Load the third store (into @store3) as you did the other two before
@store3 = Store.find_by(id: 3)
puts '----------'

#Using AR's destroy method, delete the store from the database
@store3.destroy
puts '----------'
#Verify that the store has been deleted by again outputting (puts ing) the count (as you did in ex. 1)

puts Store.count # => 2
