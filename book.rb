class Book
    attr_accessor :title, :author, :word_count

    @@all = []

    def initialize(title, author, word_count)
        @title = title
        @author = author
        @word_count = word_count 
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
