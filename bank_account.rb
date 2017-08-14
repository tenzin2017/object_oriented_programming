class BankAccount

  def initialize(balance, interest_rate)
      @balance = balance
      @interest_rate = interest_rate
  end


  def deposit(amount)
      @balance +=  amount
      "Your current balance is $ #{@balance}"
   end



  def withdraw(amount)
      @balance -= amount
      "Your current balance is $ #{@balance}"
  end


  def gain_interest
      @gain_interest
    " Your Total balance at the rate of #{@interest_rate}% is $ #{@balance + @balance*@interest_rate/100}"
end



end

lobsang = BankAccount.new(1000, 2)
sonam = BankAccount.new(2000, 3)
# puts deposit(100)
puts lobsang.deposit(100)
puts lobsang.gain_interest
puts lobsang.deposit(200)


puts sonam.deposit(200)
puts sonam.gain_interest
