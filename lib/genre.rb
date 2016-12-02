class Genre
  attr_reader :name, :books
  ALL = []

  def self.all
    ALL
  end

  def initialize(name)
    @name = name
    @books = []
    ALL << self
  end

  def authors
    # we should look at our collection of books
    self.books.collect { |book| book.author }
    # for each book in our collection, we should add that book's author to an array
    # and then return the array
  end

end
