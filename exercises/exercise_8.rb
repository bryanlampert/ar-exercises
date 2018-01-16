require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'
require_relative './exercise_7'

puts "Exercise 8"
puts "----------"

@store1.employees.create(first_name: "Drew", last_name: "Moor", hourly_rate: 90)

@drew = Employee.find_by("first_name = ?", "Drew")
puts "The new created password is #{@drew.password}"
