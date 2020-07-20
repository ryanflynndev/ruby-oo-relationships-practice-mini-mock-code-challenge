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
        Book.all.select{|book| book.author == self}
    end

    def write_book(title, word_count)
        Book.new(title, self, word_count)
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
end
