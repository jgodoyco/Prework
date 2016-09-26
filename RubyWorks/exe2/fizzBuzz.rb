
puts "FIZZBUZZ"
puts "********"
puts "Escribe el numero maximo de la serie (100xejm)"

lim = 100
#gets.chomp().to_i

puts "Bien hacemos FIZZBUZZ #{lim} veces"

for i in 0..lim
	esFizzBuzz = false
	if (i % 3) == 0 
		print "Fizz"
		esFizzBuzz = true
	end
	if (i % 5) == 0
		print "Buzz"
		esFizzBuzz = true
	end
	if (! esFizzBuzz)
		puts i
	else
		puts ""
	end
end

puts
puts "FIN FIZZBUZZ"
