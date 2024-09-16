#50.times do
 #   Author.create(
  #    name: Faker::Name.name,                   
   #   birth: Faker::Date.birthday(min_age: 15, max_age: 70) 
    #)
  #end

  genres = ['action, fantasy, horror, animation, comedy, romance']
  authors = Author.all

  authors.each do |author|
    5.times do 
        author.books.create(
            title: Faker::Book.title,
            genre: genres.sample)
    end
end 