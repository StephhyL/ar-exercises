require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts 'Exercise 5'
puts '----SUM (TOTAL REVENUE)------'

# Your code goes here ...

# Output the total revenue for the entire company (all stores) using AR's .sum calculation method.

@total_revenue = Store.sum(:annual_revenue) #4114000

puts "@total_revenue----->, #{@total_revenue}"

puts '---AVG REVENUE / STORE-------'

# On the next line, also output the average annual revenue from all stores.

@num_of_stores = Store.count
@avg_store_revenue = @total_revenue / @num_of_stores

puts "@avg_store_revenue-----> #{@avg_store_revenue}"

puts '----Num of Stores > $1M Revenue------'
# Output the # of stores that are generating $1M or more in annual sales. Hint: Chain together where and size (or count) AR methods

puts Store.where('annual_revenue > ? ', 1_000_000).size
