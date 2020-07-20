require 'pry'
require_relative './book'
require_relative './author'



#objects
jk_rowling = Author.new("J.K. Rowling")
suzanne_collins = Author.new("Suzanne Collins")

chamber_of_secrets = Book.new("Harry Potter and the Chamber of Secrets", jk_rowling, 85141)
goblet_of_fire = Book.new("Harry Potter and the Goblet of Fire", jk_rowling, 190637)
the_hunger_games = Book.new("The Hunger Games", suzanne_collins, 99750)


#tests
Book.all
chamber_of_secrets.author 
the_hunger_games.author
chamber_of_secrets.title
goblet_of_fire.word_count

Author.all
jk_rowling.books
#suzanne_collins.write_book("Catching Fire", 101564)
jk_rowling.total_words #Should be 275778
suzanne_collins.total_words #After calling write_book it should be 201314
Author.most_words


Pry.start


