class Player

   def initialize(gold_coins, health_points, lives)
     @gold_coins = gold_coins
     @health_points = health_points
     @lives = lives

   end

  def level_up
    @lives += 1
  end

  def collect_treasure
      @gold_coins += 1
     if @gold_coins%10 == 0
       level_up
     end
  end

  def do_battle(damage)
    @health_points = @health_points - damage
     if @health_points < 0
       @lives = @lives -1 && @health_points == 10

     elsif @lives == 0
       restart
     end
   end

   def restart
     @gold_coins = 5
     @health_points = 0
     @lives = 10
   end




end

tenzin = Player.new(20,10,5)
# puts lobsang.level_up
tenzin.collect_treasure
puts tenzin.inspect        #use name.inspect to check the outputs of the method

tenzin.do_battle(1)
puts tenzin.inspect
