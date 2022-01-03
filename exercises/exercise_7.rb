require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts 'Exercise 7'
puts '----------'

# Your code goes here ...

# 1. Add validations to two models to enforce the following business rules:

# Employees must always have a first name present

# Employees must always have a last name present

# Employees have a hourly_rate that is a number (integer) between 40 and 200

# Employees must always have a store that they belong to (can't have an employee that is not assigned a store)

# Stores must always have a name that is a minimum of 3 characters

# Stores have an annual_revenue that is a number (integer) that must be 0 or more

# Bonus: Stores must carry at least one of the men's or women's appearl (hint: use a custom validation method - don't use a Validator class)

# 2. Ask the user for a store name (store it in a variable)
print 'Enter new store name: '
@new_store = gets.chomp

# 3. Attempt to create a store with the inputted name but leave out the other fields (annual_revenue, mens_apparel, and womens_apparel)

@store7 =
  Store.create(
    name: @new_store,
    # annual_revenue: 200_000,
    # mens_apparel: false,
    # womens_apparel: false,
  )

# 4. Display the error messages provided back from AR to the user (one on each line) after you attempt to save/create the record

@store7.errors.messages.each { |message| puts message }

#Enter new store name: fd
# D, [2022-01-03T10:35:03.547990 #45907] DEBUG -- :    (0.6ms)  BEGIN
#D, [2022-01-03T10:35:03.574508 #45907] DEBUG -- :    (0.4ms)  ROLLBACK
#name
#name too short
#annual_revenue
#is not a number
