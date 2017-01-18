class Cat
  attr_accessor :name, :prefered_food, :meal_time
  def initialize(name, prefered_food, meal_time)
    @name = name
    @prefered_food = prefered_food
    @meal_time = meal_time
  end
  def eats_at
    "#{@meal_time}AM"
  end
  def meow
    "My name is #{name}, I eat at #{eats_at}. #{prefered_food} specifically."
  end
end
leo = Cat.new("leo","salmon",6)
doug = Cat.new("doug","tuna",7)

puts leo.meow
puts doug.meow
