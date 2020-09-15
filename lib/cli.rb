class CLI

    def main
        greet_user
        fetch_books
        menu
    end 

    def greet_user
        puts "Greetings Bookworm! Lets take a look at current NY Times Hardcover Fiction bestsellers!"
    end 
    
    def fetch_books
        API.get_books
    end

    def list_books
        Book.all.each do |ind_book|
            x = ind_book.title.downcase.split(" ")
            x.each do |word|
                word[0] = word[0].upcase
            end 
            ind_book.title = x.join(" ")
        end 

        List.all.each do |list|
            puts "#{list.date}"
        end 

        Book.all.each do |ind_book|
            puts "#{ind_book.rank}. #{ind_book.title} by #{ind_book.author}"
        end 
    end 

    def book_prompt
        puts "
Please input the number of the book you wish to learn more about."
        input = gets

        until input.to_i.between?(1,15)
            puts "Please enter a number between 1-15."
            input = gets
        end 

        input_index = input.to_i - 1
        
        puts "------
#{Book.all[input_index].rank}. #{Book.all[input_index].title} by #{Book.all[input_index].author}
Weeks on list: #{Book.all[input_index].weeks_on_list} | Published by: #{Book.all[input_index].publisher}
#{Book.all[input_index].description}
------"
    end 


    def menu
        puts "------
MENU:
1. Books List
2. Exit
------

Please enter number 1 or 2 to continue...
"
        input = gets

        until input.to_i == 1 || input.to_i == 2
            puts "You must either type in 1(books list) or 2(exit) to continue..."
            input = gets
        end


        if input.to_i == 1
            list_books
            book_prompt
            menu
        elsif input.to_i == 2
            exit
        end
        
    end 
    
end 