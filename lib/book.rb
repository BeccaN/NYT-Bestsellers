class Book

    @@all = []

    attr_accessor :rank, :weeks_on_list, :publisher, :description, :title, :author

    def initialize(rank, weeks_on_list, publisher, description, title, author)
        @rank = rank
        @weeks_on_list = weeks_on_list
        @publisher = publisher
        @description = description
        @title = title #lower case all and upper case the first letter of each word?
        @author = author

        @@all << self
    end  
    
    def self.all
        @@all 
    end 

end 