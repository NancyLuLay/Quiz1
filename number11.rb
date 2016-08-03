module HelperMethods
  def titleize (string)
    array = string.split(" ")
    cap_string = array.map do |word|
      case word
      when "in", "the", "of", "and", "or", "from"
      word
      else
      word.capitalize
      end
    end
  return cap_string.join(" ")
  end
end

class Title
  include HelperMethods
end

#TESTING
new_string = Title.new
p new_string.titleize("it was the best of times, it was the worst of times")
