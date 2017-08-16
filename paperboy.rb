class Paperboy


   def initialize(name)
     @name = name
     @experience = 0
     @earnings = 0

   end

   def quota
      return  quota = 50 + (@experience / 2)
   end

   def deliver(start_address, end_address)

      @house = (end_address - start_address + 1).abs

    if @house == quota
       @earnings += @house*0.25
    elsif @house > quota
       @earnings += @house*0.25 + ( @house- quota)*0.25
    else
       @earnings += @house * 0.25
       @earnings -= 2
     end
     @experience += @house
   end


   def report
       puts " I'm #{@name}, I've delivered #{@experience} papers and I've earned $ #{@earnings} so far !"
   end

end

tommy = Paperboy.new("Tommy")
puts tommy.inspect
puts tommy.quota
puts tommy.deliver(101,160)
puts tommy.inspect
puts tommy.quota
puts tommy.deliver(1, 75)
puts tommy.inspect
puts tommy.report
