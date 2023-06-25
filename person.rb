class Person
  attr_reader :id, :name, :age

  def initialize(age, name = 'Unknown', parent_permission: true)
    @id = generate_id
    @name = name
    self.age = age
    @parent_permission = parent_permission
  end

  def age=(age)
    @age = age.to_i
  end

  def can_use_services?
    of_age? || @parent_permission
  end

  private

  def of_age?
    @age >= 18
  end

  def generate_id
    Random.rand(1..1000)
  end
end
