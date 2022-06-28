# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

publisher = Publisher.create(
  name: "Gihyo inc.",
  address: "Ichigaya"
)

(1..2).each do |i|
  publisher.books << Book.create(
    name: "Book #{i}",
    published_on: Time.current,
    price: i * 1000
  )
end

matz = Author.create(name: "Matsumoto Yukihiro", penname: "Mats" )
dhh = Author.create(name: "David Heinemeiner Hansson", penname: "DHH" )

matz.books << Book.find(1)
matz.books << Book.find(2)

book = Book.find(1)
book.authors << dhh



