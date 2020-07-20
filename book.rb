class Book
    attr_accessor :title, :word_count

    @@all = []

    def initialize(title, word_count)
        @title = title
        @word_count = word_count 
        save
    end

    def self.all 
        @@all 
    end

    def authors
        write.map{|write| write.author}
    end

    private

    def save
        @@all << self
    end

    def write
        Write.all.select{|write| write.book == self }
    end
end
