class List

    @@all = []

    attr_accessor :date 

    def initialize(date)
        @date = date
        @@all << self
    end 

    def self.all
        @@all 
    end 

end 