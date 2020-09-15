class API

    #URL = "https://www.nytimes.com/books/best-sellers/combined-print-and-e-book-fiction/"


    def self.get_books
        

        url = "https://api.nytimes.com/svc/books/v3/lists/current/hardcover-fiction.json?api-key=fsJWHJdonSPPSpN9GGGOtAam61EcmrwM"

        uri = URI.parse(url)
        body = uri.read
        data = JSON.parse(body)
        
        
        book_data = data["results"]["books"] 
        
        book_data.each do |book|
            Book.new(book["rank"], book["weeks_on_list"], book["publisher"], book["description"], book["title"], book["author"])
        end 

        #make the list date object
        List.new(data["results"]["bestsellers_date"])

    end 
end 
