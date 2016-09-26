puts "WORD SORTING"
puts "************"

puts "Escribe una frase para ordenarlas ?"
frase = gets.chomp

palabras = frase.split(" ")
palabras_filtradas = []
caracteres_puntuacion = [".",",",":",":",";","!","¡","¿","?","(",")"]

palabras.each do |palabras|
	if !caracteres_puntuacion.include?(palabras)
		palabras_filtradas << palabras
	end
end

palabras_ordenadas = palabras_filtradas.sort 

palabras_ordenadas.each do |palabras_ordenadas|
	print palabras_ordenadas + ","
end

puts 
puts "FIN WORD SORTING"
