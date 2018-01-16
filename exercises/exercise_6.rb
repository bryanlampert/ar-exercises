require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

@store1.employees.create(first_name: "Alex", last_name: "Bono", hourly_rate: 60)
@store1.employees.create(first_name: "Tossaint", last_name: "Ricketts", hourly_rate: 50)
@store1.employees.create(first_name: "Jonathan", last_name: "Osorio", hourly_rate: 70)
@store2.employees.create(first_name: "Sebastien", last_name: "Giovinco", hourly_rate: 160)
@store2.employees.create(first_name: "Michael", last_name: "Bradley", hourly_rate: 140)
@store2.employees.create(first_name: "Jozy", last_name: "Altidore", hourly_rate: 120)
@store2.employees.create(first_name: "Victor", last_name: "Vazquez", hourly_rate: 100)

