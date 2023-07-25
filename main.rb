require './decorator'
require './trimmer_decorator'
require './capitalize_decorator'
require './person'
require './teacher'
require './student'
require './classroom'
require './nameable'
require './book'
require './rental'

alycia = Student.new('Art', 17, 'Alycia', parent_permission: true)
octavia = Student.new('Art', 16, 'Octavia', parent_permission: false)
clarke = Student.new('Art', 16, 'Clarke')
raven = Student.new('Art', 19, 'Raven')
math = Classroom.new('Math')
puts math.students
puts alycia.classroom
puts octavia.classroom
puts clarke.classroom
puts raven.classroom
math.add_student(alycia)
puts alycia.classroom
puts alycia.classroom.label
puts math.students
math.add_student(octavia)
puts octavia.classroom
puts octavia.classroom.label
puts math.students
math.add_student(clarke)
puts math.students
puts clarke.classroom.label
puts math.students.count
puts math.students.first.name
puts math.students.first.age
puts math.students.count
raven.classroom = math
puts raven.classroom
puts raven.classroom.label
puts math.students.count
puts math.students.last
puts math.students.last.name

book_one = Book.new('Title One', 'Author One')
book_two = Book.new('Title Two', 'Author Two')
book_three = Book.new('Title Three', 'Author Three')
Rental.new('2023-03-07', alycia, book_one)
Rental.new('2023-07-03', alycia, book_one)
puts alycia.rentals.count
alycia.add_rental('2022-12-12', book_three)
puts(alycia.rentals.map(&:date))
puts 'test'
book_three.add_rental('2021-12-12', octavia)
book_two.add_rental('2021-11-12', octavia)
puts(octavia.rentals.map(&:date))
puts book_one.rentals.count
puts book_two.rentals.count
puts(book_two.rentals.map { |rental| rental.book.title })
Rental.new('2023-03-13', octavia, book_one)
Rental.new('2023-07-23', octavia, book_two)
puts octavia.rentals.count
puts(octavia.rentals.map(&:date))
puts book_one.rentals.count
puts(book_one.rentals.map { |rental| rental.book.title })
puts(book_one.rentals.map { |rental| rental.person.name })
puts book_two.rentals.count
puts(book_two.rentals.map { |rental| rental.person.name })
