class Write
    attr_accessor :book, :author

    @@all = []

    def initialize(book, author)
        @author = author 
        @book = book 
        save
    end

    def self.all 
        @@all
    end

    private

    def save
        @@all << self
    end
end