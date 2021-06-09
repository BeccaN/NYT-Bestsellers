class BooksList
    @@all = [
    ["Fiction", "combined-print-and-e-book-fiction"],
    ["Non-Fiction", "combined-print-and-e-book-nonfiction"],
    ["Graphic Novels", "graphic-books-and-manga"],
    ["Childrens Books", "chapter-books"],
    ["Childrens Picture Books", "picture-books"],
    ["Young Adult", "young-adult"],
    ["Animals", "animals"],
    ["Business", "business-books"],
    ["Crime", "crime-and-punishment"],
    ["Culture", "culture"],
    ["Food and Fitness", "food-and-fitness"],
    ["Race and Civil Rights", 'race-and-civil-rights'],
    ["Science", 'science'],
    ["Sports", 'sports'],
    ["Travel", 'travel']
    ]

    def self.all
        @@all 
    end
end