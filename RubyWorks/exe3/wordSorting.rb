def eliminaPuntuacion(frase_a_ordenar)
	caracteres_puntuacion = ['.',',',':',':',';','!','¡','¿','?','(',')']
	caracteres_puntuacion.each do |caracteres_puntuacion|
		while frase_a_ordenar.include?(caracteres_puntuacion) do 
			frase_a_ordenar = frase_a_ordenar.sub(caracteres_puntuacion, ' ')
		end
	end
	return frase_a_ordenar
end

def pintaFraseOrdenada(palabras_ordenadas)
	i = 0
	tam_array = palabras_ordenadas.length
	print "("+tam_array.to_s+")"
	print "palabras_ordenadas = ["
	palabras_ordenadas.each do |palabras_ordenadas|		
		print "'"+palabras_ordenadas + "'"
		i +=1
		if i<tam_array 
			print ", "
		end	
	end
	print "]"
end

puts "WORD SORTING"
puts "************"

puts "Escribe una frase para ordenarlas ?"
frase = gets.chomp
frase = eliminaPuntuacion(frase)

palabras = frase.split(" ")
palabras_sorted = palabras.sort 

pintaFraseOrdenada(palabras_sorted)

puts 
puts "FIN WORD SORTING"
