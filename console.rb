require 'pry'
require_relative './book'
require_relative './author'
require_relative './write'


#objects
jk_rowling = Author.new("J.K. Rowling")
suzanne_collins = Author.new("Suzanne Collins")

chamber_of_secrets = Book.new("Harry Potter and the Chamber of Secrets", 85141)
goblet_of_fire = Book.new("Harry Potter and the Goblet of Fire", 190637)
the_hunger_games = Book.new("The Hunger Games", 99750)
hungry_wizards = Book.new("Hungry Wizards", 100250)

rowling_cos = Write.new(chamber_of_secrets, jk_rowling)
rowling_gof = Write.new(goblet_of_fire, jk_rowling)
collins_hg = Write.new(the_hunger_games, suzanne_collins)
rowling_hw = Write.new(hungry_wizards, jk_rowling)
collins_hw = Write.new(hungry_wizards, suzanne_collins)

#tests
Book.all
chamber_of_secrets.authors 
the_hunger_games.authors
hungry_wizards.authors
chamber_of_secrets.title
goblet_of_fire.word_count

Author.all
jk_rowling.books
#suzanne_collins.write_book("Catching Fire", 101564)
jk_rowling.total_words #Should be 376028
suzanne_collins.total_words #After calling write_book it should be 301564
Author.most_words #Jk Rowling


Pry.start


