require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...

class Employees < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name, presence: true
  # validates :hourly_rate, 
  validates :hourly_rate, numericality: { only_integer: true }, length: {maximum: 40, minimium: 200}
  validates :store_id, presence: true
end

class Store < ActiveRecord::Base
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: {greater_than_or_equal: 0}
end

puts "Enter the store name:"
@store_name = gets.chomp

store42 = Store.create(name: @store_name)

store42.valid?
puts store.errors.full_messages
