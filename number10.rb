module MyMethod
  def greeting(name)
    "Welcome #{name}"
  end
end

class Class1
  include MyMethod
end

class Class2
  extend MyMethod
end

# puts Class1.greeting("Nancy")
# The include adds the methods as instance methods so the previous line of code does not work: not a class method

variable = Class1.new
puts variable.greeting("Nancy")


puts Class2.greeting("Nancy")
# Extend adds methods as class methods, can use them directly and we don't need to create an object belonging to this class to use it (as we had to do with Class1-include)
