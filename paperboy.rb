class Paperboy


   def initialize(name)
     @name = name
     @experience
     @earnings

   end

   def quota
       quota = 50 + (@experience / 2)
   end

   def deliver(start_address, end_address)

      @experience = (end_address - start_address).abs
      if @experience == quota
      @earnings = @experience* 0.25
    elsif @experience > quota
       @earnings = @experience*0.25 + (@experience - quota)*0.5
     end


   end


   def report
       puts " I'm #{@name}, I've delivered #{@experience} papers and I've earned $ #{@earnings} so far !"
   end

end

john = Paperboy.new("John")
puts john.inspect
puts john.quota
puts john.deliver(101,160)
puts john.report

puts john.quota
puts john.deliver(200,300)
puts john.report
