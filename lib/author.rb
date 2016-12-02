class Author
  attr_reader :first_name, :last_name, :books
  ALL = []

  def self.all
    ALL
  end

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
    @books = []
    ALL << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_book(book)
    books << book
    book.author = self
  end

  def genres
    self.books.collect { |book| book.genres }.flatten.uniq
  end
end
