require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts 'Exercise 4'
puts '----------'

# Your code goes here ...

# Add 3 more stores

@store4 =
  Store.create(
    name: 'Surrey',
    annual_revenue: 224_000,
    mens_apparel: false,
    womens_apparel: true,
  )

@store5 =
  Store.create(
    name: 'Whistler',
    annual_revenue: 1_900_000,
    mens_apparel: true,
    womens_apparel: false,
  )

@store6 =
  Store.create(
    name: 'Yaletown',
    annual_revenue: 430_000,
    mens_apparel: true,
    womens_apparel: true,
  )

puts "store count ----> #{Store.count}"

puts '----@MENS_STORES------'

# Using the where class method from AR, fetch (a collection of) only those stores that carry men's appearel. Assign the results to a variable @mens_stores

@mens_stores = Store.where(mens_apparel: true)

p "@mens_stores ======> #{@mens_stores}"
# => #<Store::ActiveRecord_Relation:0x0000000141057ef8>"

puts @mens_stores.count # => 3

puts '----LOOPS------'
# Loop through each of these stores and output their name and annual revenue on each line.

@mens_stores.each { |store| puts store.name, store.annual_revenue }

puts '-----WOMEN APPAREL && < $1M-----'
# Do another fetch but this time, load stores that carry women's apparel and are generating less than $1M in annual revenue

#?????
@womens_apparel_little_revenue =
  Store.where(womens_apparel: true, annual_revenue: 0...1_000_000)

puts "count ----> #{@womens_apparel_little_revenue.count}"

puts "#{@womens_apparel_little_revenue.each { |store| puts store.name, store.annual_revenue }}"
puts '----------'
