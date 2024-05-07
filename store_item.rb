# C. Use hashes with symbols to represent the following scenario:

# C.1 - You are the owner of a store that sells items (you decide what specifically). Each item has various properties such as color, price, etc.
# C.2 - Represent 3 items using hashes. Each hash should have the same keys with different values.
# C.3 - Be sure to use symbols for the keys. Try creating hashes using both types of hash symbol syntaxes. (Ruby syntax {:a => 123} vs. “JavaScript” syntax {a: 123}).


class Store
  def initialize
    @items = []
  end

  def add(item)
    @items.push(item)
  end

  def display
    puts "Items:"
    i = 1
    for item in @items
      line = "#{i} | #{item[:name]} (#{item[:color]}) -- $#{item[:price].round(2)}"

      sale = item[:sale]
      if sale 
        if sale != 0
          line += " (#{sale * 100}% off!)"
        end
      end
      puts line
      i +=1
    end
  end

  def on_sale(percent)
    @items.each {|item| item[:price] = item[:price] * (1 - percent); item[:sale] = percent.round(2)}
  end
end


item1 = {name: 'apple', color: 'red', price: 12.99}
item2 = {:name => 'banana', :color => 'yellow', :price => 16.25}
item3 = {:name => 'pear', :color => 'green', :price => 8.89}

store = Store.new
for item in [item1, item2, item3]
  store.add(item)
end


puts "Welcome to my store!"
store.display

puts "enter a percent for our fire sale!"
while true
  num = gets.chomp.to_f
  if num > 0 && num < 1
    break
  end
end
store.on_sale(num)
store.display










# Bonus: Read more about Ruby array and hash methods. Explore using different methods in your code.
# https://ruby-doc.org/core/Array.html
# https://ruby-doc.org/core/Hash.html
# https://ruby-doc.org/core/Symbol.html
# Bonus:
# Try to represent the same store items using a class!