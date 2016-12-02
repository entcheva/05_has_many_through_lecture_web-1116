require 'pry'
require_relative '../lib/author'
require_relative '../lib/book'
require_relative '../lib/genre'

genre = Genre.new('Western')
book = Book.new('Hombre', 'A western novel about a gunslinger')
author = Author.new('Elmore', 'Leonard')

binding.pry
