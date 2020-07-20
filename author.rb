class Author
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        save
    end

    def self.all
        @@all
    end

    def books
        write.map{|write| write.book}
    end

    def write_book(title, word_count)
        new_book = Book.new(title, word_count)
        Write.new(new_book, self)
        new_book 
    end

    def total_words
        self.books.sum{|book| book.word_count}
    end

    def self.most_words 
        Author.all.max{|author_a, author_b| author_a.total_words <=> author_b.total_words}
    end

    private

    def save
        @@all << self 
    end 

    def write
        Write.all.select{|write| write.author == self }
    end
end
