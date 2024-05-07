



class Test
  def initialize(args)
    @apple = args[:apple]
    @pear = args[:pear]
    @kiwi = args[:kiwi]
  end

  def display
    pp @apple
    pp @pear
    pp @kiwi
  end
end



puts "Item updated!"

test = Test.new({apple: 3, pear: 4})
test.display