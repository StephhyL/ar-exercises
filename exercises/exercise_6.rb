require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts 'Exercise 6'
puts '----------'

# Your code goes here ...

# RE: Employee class (and employee table). If you look at the table's column structure, you'll find that it has a store_id (integer) column. This is a column that identifies which store each employee belongs to. It points to the id (integer) column of their store.

# Let's tell AR that these two tables are in fact related viat the store_id column.

# 1. Add the following code directly inside the Store model (class): has_many : employees (in store.rb)

# 2. Add the following code directly inside the Employee model (class): belongs_to: store (in employee.rb)

# 3. Add some data into employees. Here's an example of one (note how it differs from how you created stores):
# @store1.employees.create(first_name: "Kurram", last_name: "Virani", hourly_rate: 60)
puts '----------'
@store1.employees.create(
  first_name: 'Stephanie',
  last_name: 'Li',
  hourly_rate: 200,
)

# 4. Go ahead and create some more employees using the create method. You can do this by making multiple calls to create (like you have before). No need to assign the employees to varaibles though. Create them through the @store# instance varaibles that you defined in previous exercises. Create a bunch under @store1 (Burnaby) and @store2(Richmond). Eg. @store1.employees.create(...)
puts '----------'

@store1.employees.create(first_name: 'Apple', last_name: 'Bee', hourly_rate: 40)

@store1.employees.create(
  first_name: 'Banana',
  last_name: 'Bread',
  hourly_rate: 50,
)

@store2.employees.create(
  first_name: 'Green',
  last_name: 'Dragon',
  hourly_rate: 55,
)

@store2.employees.create(
  first_name: 'Emily',
  last_name: 'Smith',
  hourly_rate: 60,
)

@store4.employees.create(first_name: 'John', last_name: 'Doe', hourly_rate: 50)

@store4.employees.create(
  first_name: 'Janet',
  last_name: 'James',
  hourly_rate: 60,
)

@store5.employees.create(
  first_name: 'Thoms',
  last_name: 'Pert',
  hourly_rate: 40,
)

@store6.employees.create(first_name: 'Mona', last_name: 'Sun', hourly_rate: 40)
puts '*********'
@store6.employees.create(first_name: 'Chipp', last_name: 'Ste', hourly_rate: 40)
