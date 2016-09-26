
puts "FIZZBUZZ"
puts "********"
puts "Escribe el numero maximo de la serie (100xejm)"
puts

lim = 100
i = 1

puts "Bien hacemos FIZZBUZZ #{lim} veces"
puts

while i < lim do
	result = ""
	esFizzBuzz = false
	if (i % 3) == 0 
		result << "Fizz"
		esFizzBuzz = true
	end
	if (i % 5) == 0
		result << "Buzz"
		esFizzBuzz = true
	end
	if (i.to_s[0] == "1")
		result << "Bang"
		esFizzBuzz = true
	end
	if (! esFizzBuzz)
		result << i.to_s
	end
	puts result
	
	i +=1
end
puts
puts "FIN FIZZBUZZ"
