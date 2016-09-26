
puts "FIZZBUZZ"
puts "********"
puts "Escribe el numero maximo de la serie (100xejm)"
puts

lim = 100
i = 1

puts "Bien hacemos FIZZBUZZ #{lim} veces"
puts

while i < lim do
	esFizzBuzz = false
	if (i % 3) == 0 
		print "Fizz"
		esFizzBuzz = true
	end
	if (i % 5) == 0
		print "Buzz"
		esFizzBuzz = true
	end
	if (i.to_s[0] == "1")
		print "Bang"
		esFizzBuzz = true
	end
	if (! esFizzBuzz)
		puts i
	else
		puts ""
	end
	i +=1
end
puts
puts "FIN FIZZBUZZ"
