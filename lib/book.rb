class Book

    @@all = []

    attr_accessor :title
    attr_reader :rank, :weeks_on_list, :publisher, :description, :author

    def initialize(rank, weeks_on_list, publisher, description, title, author)
        @rank = rank
        @weeks_on_list = weeks_on_list
        @publisher = publisher
        @description = description
        @title = title
        @author = author

        @@all << self
    end  
    
    def self.all
        self
        @@all 
    end 

end 