require_relative '../rental'
require_relative '../student'
require_relative '../book'

describe Rental do
  before :each do
    @student = Student.new 15, 'Student', false
    @book = Book.new 'Title', 'Author'
    @rental = Rental.new('2023/03/07', @student, @book)
  end
  context '#new' do
    it 'takes three parameters and returns a Rental object' do
      @rental.should be_an_instance_of Rental
    end
  end
end
