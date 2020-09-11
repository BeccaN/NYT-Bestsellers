class CLI

    def main
        fetch_books
        
    end 
    
    def fetch_books #fetching books and making books, and also making the list date
        API.get_books
    end 

    # def puts_list_date #Add this feature later once the main book list app is working
    #     puts List.date
    # end 

end 