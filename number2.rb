# Order of operations: accessing arrays

# Stack-Last in, first out (LIFO principle)- The last dish (in this case-element)you put in is the first one you take out
# Queue- First in, first out. Removes elements in the order they were added

class Stack
  attr_accessor :array

  def initialize(array)
    @array = array
  end

  def add(a)
    @array.push(a)
  end
#
  def remove
    @array.pop
  end
end

#TESTING Stack class:
my_array=Stack.new([])
#TESTING add method
my_array.add("a")
my_array.add("b")
my_array.add("c")
#Ruby reads from top to bottom, so they are added in the order of a, b, c
p my_array.array
#TESTING remove method
my_array.remove
#"c" should be removed, remaining array should be ["a", "b"]
p my_array.array


class Queue
  attr_accessor :array

  def initialize(array)
    @array = array
  end

  def add(a)
    @array.push(a)
  end

  def remove
    @array.shift
  end
end


#TESTING Queue class:
my_array=Queue.new([])
#TESTING add method
my_array.add("a")
my_array.add("b")
my_array.add("c")
#Ruby reads from top to bottom, so they are added in the order of a, b, c
p my_array.array
#TESTING remove method
my_array.remove
#shift should remove the first element of the array ("a") as it was the first one to be pushed in. The remaining array should be ["b", "c"]
p my_array.array
