class Dog
  def bark
    return "Woof"
  end
  
  def fetch
    return "*runs to the stick you threw, fetches it, and brings it back to you.*"
  end
end

fido = Dog.new
fido.bark
fido.fetch