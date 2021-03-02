class API
    def self.get_books(book_url)
        url = "https://api.nytimes.com/svc/books/v3/lists/current/#{book_url}.json?api-key=" + ENV["API_KEY"]

        uri = URI.parse(url)
        body = uri.read
        data = JSON.parse(body)
        book_data = data["results"]["books"] 
        
        book_data.each do |book|
            Book.new(book["rank"], book["weeks_on_list"], book["publisher"], book["description"], book["title"], book["author"], book["amazon_product_url"])
        end 

        List.new(data["results"]["bestsellers_date"])
    end
end 
