# classroom.rb
require_relative 'student'

class Classroom
  attr_accessor :label, :students

  def initialize(label)
    @label = label
    @students = []
  end

  def add_student(age, name = 'Unknown', parent_permission: true)
    student = Student.new(age, self, parent_permission: parent_permission, name: name)
    @students << student
  end
end
