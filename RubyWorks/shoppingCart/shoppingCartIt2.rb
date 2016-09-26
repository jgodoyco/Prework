class ShoppingCart
  
  def initialize
    @items = [ Fruit.new("Orange", 8), Fruit.new("Banana", 10), Juice.new("Orange Juice", 10),  Legume.new("Rice", 1), Houseware.new("Vacuum Cleaner", 150), Fish.new("Anchovies", 2) ]
    @isWeekend = true
  end

  def printItems
  	puts "Lista de Items Disponibles [isWeekend: #{@isWeekend} ]"
  	puts "*******************************************"
  	lista =@items
  	lista.each do |item|
  		item.setIsWeekend(@isWeekend)
  		print item.class
  		print ")"
  		item.printItem
  	end
  end

  def add_item(item)
      @items << item
      puts "*** Item AÑADIDO ***"
      printItems
  end

  def make_item
      #Add your item to @items
      puts "Añade Item "
      puts "************"
      puts "Tipo Item"
      lista =@items
      listaClasses=[]
      i=0
      lista.each do |item|
        tipoClasses = item.class
        if !listaClasses.include?(tipoClasses)
          print i.to_s
          print ")"
          puts tipoClasses.to_s
          listaClasses << item.class
          i +=1   
        end       
      end
      print "Selecciona tipo Item-->"
      tipoItem = gets.chomp.to_i      
      puts ""
      print "Selecciona nombre Item-->"
      nameItem = gets.chomp
      puts ""
      print "Selecciona precio Item-->"
      priceItem = gets.chomp.to_i
      puts ""
      newItem = listaClasses[tipoItem].new(nameItem,priceItem)
      add_item(newItem)
      
  end
  
end

class Item   
  def initialize(name, price)
      @name = name
      @price = price
      @isWeekend =false
  end
  def name
      return @name
  end
  def printItem
  	puts "--> #{@name} : [ price: #{price} $ ] "
  end
  def setIsWeekend(valIsWeekend)
  	  @isWeekend = valIsWeekend
  end
  def isWeekend
  	return @isWeekend
  end
end

class Houseware < Item
  def price
      #Hmmm maybe this changes somehow..
      if @price > 100 
      	return (@price-(@price*5/100))
      end
  end
end

class Fruit < Item
  def price
      #Something special may go here too...2
      if(!@isWeekend)
            return @price
      else			    
            return @price-(@price * 10/100)
      end
  end
end

class Fish < Item
  def price
      return @price
  end
end

class Legume < Item
  def price
      return @price
  end
end

class Juice < Item
  def price
      return @price
  end
end

tienda = ShoppingCart.new

while true do
  puts "\e[H\e[2J"
  tienda.printItems
  puts "***********************"
  puts "* MENU SHOPPING CARTS *"
  puts "***********************"
  puts "1) ¿Quiere añadir un nuevo Item a la ShoppingCart"
  puts ""
  print "Elige OPCION -->"
  opcion = 0
  opcion = gets.chomp.to_i
  case opcion
  when 1  
    tienda.make_item
  else
    puts "Opcion INCORRECTA. Pulse Intro."
    gets.chomp
  end  

end