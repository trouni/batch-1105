class Citizen
  attr_reader :first_name, :last_name, :age

  def age
    @age
  end

  def initialize(first_name, last_name, age)
    @first_name = first_name
    @last_name = last_name
    @age = age
  end

  def can_vote?
    @age >= 18
  end

  def full_name
    "#{@first_name.capitalize} #{@last_name.capitalize}"
  end
end

#initialize(first_name, last_name, age)
#can_vote? (boolean)
#full_name (String)
