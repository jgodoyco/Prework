class ShoppingCart
  def initialize
    @items = [ Fruit.new("Banana", 10),  Juice.new("Orange Juice", 10),  Legume.new("Rice", 1), Houseware.new("Vacuum Cleaner", 150), Fish.new("Anchovies", 2) ]
    @isWeekend = true
  end
  def printItems
  	puts "Lista de Items Disponibles [ #{@isWeekend} ]"
  	puts "*******************************************"
  	lista =@items
  	lista.each do |item|
  		item.setIsWeekend(@isWeekend)
  		print item.class
  		print ")"
  		item.printItem
  	end
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
  	puts "--> #{@name} : #{price} $ ] (isWeekend: #{@isWeekend})"
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
      #Something special may go here too...
      puts "WEEKEND: #{@isWeekend}"
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
tienda.printItems