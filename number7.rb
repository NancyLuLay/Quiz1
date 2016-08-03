module HelperMethods
  def titleize (string)
    array = string.split(" ")
    array2=[]
    array.each do |word|
      if word != "in" && word != "the" && word != "of" && word != "and" && word != "or" && word != "from"
        array2 << word.capitalize!
      else
        array2 << word
      end
    end
  return array2.join(" ")
  end
end

class Title
  include HelperMethods
end

#Testing
new_string = Title.new
p new_string.titleize("it was the best of times, it was the worst of times")
