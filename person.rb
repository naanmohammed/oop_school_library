require_relative 'nameable'
require_relative 'rental'

class Person < Nameable
  attr_reader :id
  attr_accessor :name, :age, :books, :rentals

  def initialize(age, name: 'Unknown', parent_permission: true)
    super()
    @id = Random.rand(1..100)
    @name = name
    self.age = age
    @parent_permission = parent_permission
    @rentals = []
  end

  def add_rental(book, date)
    Rental.new(date, self, book)
  end

  def correct_name
    @name.correct_name
  end

  def add_rental(book, date)
    Rental.new(book, self, date)
  end

  private

  def of_age?
    @age >= 18
  end

  def generate_id
    Random.rand(1..1000)
  end
end
