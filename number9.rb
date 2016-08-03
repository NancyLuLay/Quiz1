class Book
  attr_accessor :title, :chapters

  def initialize
    @chapters_array = []
  end

  def add_chapter(chapter_title)
    @chapters_array << (chapter_title)
  end

  def chapters
    puts "Your book: #{title} has #{@chapters_array.length} chapters:"
    counter=1
    @chapters_array.each do |name|
    puts counter.to_s + ". " + name
    counter += 1
    end
  end
end

#TESTING with the example given
book = Book.new
book.title = "My Awesome Book"
book.add_chapter("My Awesome Chapter 1")
book.add_chapter("My Awesome Chapter 2")
book.chapters
