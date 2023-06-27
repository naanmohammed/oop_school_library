require_relative 'person'

class Student < Person
  attr_accessor :name
  attr_reader :classroom

  def initialize(age, classroom, parent_permission: true, name: 'Unknown')
    super(name, age, parent_permission)
    @classroom = classroom
  end

  def play_hooky
    '¯\\(ツ)/¯'
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end
end
