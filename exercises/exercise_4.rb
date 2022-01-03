require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
store4 = Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
store4.save

store5 = Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
store5.save

store6 = Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)
store6.save

puts "mens_stores"
puts "----------"
@mens_stores = Store.where(mens_apparel: true)

@mens_stores.each do |i|
  puts "Store '#{i.name}' has annual revenue of #{i.annual_revenue}$."
end

puts "womens_stores"
puts "----------"
@womens_stores = Store.where("womens_apparel = ? AND annual_revenue < ?", true, 1000000)

@womens_stores.each do |i|
  puts "Store '#{i.name}' has annual revenue of #{i.annual_revenue}$."
end