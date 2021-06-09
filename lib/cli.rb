class CLI
    @@seperator = "----------------------------------------"

    def validate_input(input_max)
        @@input = gets
        until @@input.to_i.between?(1,input_max)
            puts "Please enter a number between 1-#{input_max}.".colorize(:red)
            @@input = gets
        end 
    end

    def main
        greet_user
        fetch_books
        menu
    end

    def greet_user
        puts "#{@@seperator}
Greetings Bookworm! Lets take a look at current NY Times Hardcover Fiction bestsellers!
#{@@seperator}".colorize(:light_blue)
    end 
    
    def fetch_books
        BooksList.all.each do |book_list| 
            puts "#{BooksList.all.index(book_list) + 1}" + ". " + book_list[0]
        end

        puts "#{@@seperator}
Please enter the number of the coordinating book list you wish to view!
#{@@seperator}".colorize(:light_blue)

        #need to add validation
        validate_input(15)
        
        book_url = BooksList.all[@@input.to_i - 1][1]
        API.get_books(book_url)
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
            list_array = list.date.split("-")
            puts "#{@@seperator}
This list was established on #{list_array[1]}/#{list_array[2]}/#{list_array[0]}!
#{@@seperator}".colorize(:light_blue)
        end 

        Book.all.each do |ind_book|
            puts "#{ind_book.rank}. #{ind_book.title} by #{ind_book.author}
            \n"
        end 
    end 

    def book_prompt
        puts "#{@@seperator}
Please enter the number of the book you wish to learn more about.
#{@@seperator}".colorize(:light_blue)
        
        validate_input(Book.all.length())

        input_index = @@input.to_i - 1
        
        puts "
#{Book.all[input_index].title} by #{Book.all[input_index].author}
Weeks on list: #{Book.all[input_index].weeks_on_list} | Published by: #{Book.all[input_index].publisher}
Decription: #{Book.all[input_index].description}
Amazon Link: #{Book.all[input_index].link}
"
    end 

    def menu
        puts "
--MENU--
1. View Books List
2. Exit"
        puts "#{@@seperator}
Please enter number 1 or 2 to continue...
#{@@seperator}".colorize(:light_blue)

        validate_input(2)

        if @@input.to_i == 1
            list_books
            book_prompt
            menu
        elsif @@input.to_i == 2
            exit
        end
    end 
end 