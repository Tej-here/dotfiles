# Define a class called Person
class Person
  # Define the initialize method to set up the instance variables
  def initialize(name, age)
    @name = name
    @age = age
  end

  # Define a method to return a greeting
  def greet
    "Hello, my name is #{@name} and I am #{@age} years old."
  end

  # Define a method to check if the person is an adult
  def adult?
    @age >= 18
  end

  # Define a method to return the person's name
  attr_reader :name

  # Define a method to return the person's age
  attr_reader :age
end

# Create an instance of the Person class
person = Person.new('Alice', 30)

# Print the greeting
puts person.greet

# Check if the person is an adult
if person.adult?
  puts "#{person.name} is an adult."
else
  puts "#{person.name} is not an adult."
end

# Print the person's name and age
puts "Name: #{person.name}"
puts "Age: #{person.age}"
