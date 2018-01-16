require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

puts "Add a new store. What is the name?"
@user_new_store = gets.chomp
@new_store = Store.create(name: @user_new_store)
if (@new_store.errors[:name] != [])
  puts "Error! #{@new_store.errors[:name]}"
end
puts "Error! #{@new_store.errors[:annual_revenue]}"
puts "Error! #{@new_store.errors[:mens_apparel]}"
puts "Error! #{@new_store.errors[:womens_apparel]}"
