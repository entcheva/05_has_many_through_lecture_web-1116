class Book
  attr_accessor :summary, :author
  attr_reader :title, :genres
  ALL = []

  def self.all
    ALL
  end

  def initialize(title, summary)
    @title = title
    @summary = summary
    @genres = []
    ALL << self
  end

  def add_genre(genre)
    # self.genres []
    genres << genre
    genre.books << self
  end

end
