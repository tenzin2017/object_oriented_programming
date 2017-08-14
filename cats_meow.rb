class Cat

  def initialize(name, preferred_food, meal_time)
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time

  end

  def eats_at
    if @meal_time > 1 && @meal_time < 12
      @meal_time = "#{@meal_time}A.M"
    elsif @meal_time > 12 && @meal_time < 24
      @meal_time = "#{@meal_time - 12}PM"
    end
  end


  def meow
    eats_at
    puts "My name is #{@name} and I eat #{@preferred_food} at #{@meal_time}"
  end

end


cat1 = Cat.new('tashi', 'Fancy feast food', 13)
puts cat1.meow
cat2 = Cat.new('max', 'nutro max food', 20)
puts cat2.meow
