load '/Users/xnaaancy/codecore_bootcamp/practice/number7.rb'
module Blog
  class Article
    attr_accessor :title, :body
    include HelperMethods
    def title
      return self.titleize(@title)
    end
  end

  class Snippet < Article
    def body
      if @body.split("").length > 100
        return @body[0,100] + "..."
      else
        return @body
      end
    end
  end
end

#TESTING: Capitalized title using titleize from question 7
new_book = Blog::Article.new
new_book.title = "gone with the wind"
p new_book.title

# TESTING: snippet method with a body larger than 100 char. Should result in 100 char + ...
snip_test = Blog::Snippet.new
snip_test.body = "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum"
p snip_test.body
#
# TESTING: snippet method with a body shorter than 100 char. Should display the whole content
snip_test2 = Blog::Snippet.new
snip_test2.body = "Lorem ipsum dolor sit"
p snip_test2.body
