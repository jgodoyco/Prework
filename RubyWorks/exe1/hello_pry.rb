puts "Hello, world!"
puts "I"
puts "like"
puts "pie."

print "Cookies"
print "are"
print "good"
print "too."

require 'pry'

name = "Rafael"
puts "Hi #{name}/n"

puts "Give me a number"
first_number = gets.chomp.to_i
puts "Give me another number"
second_number = gets.chomp.to_i
puts "#{first_number} x #{second_number} = #{first_number * second_number}"

file_contents = IO.read("hello.rb")

binding.pry

puts "The source file contains: #{file_contents}"