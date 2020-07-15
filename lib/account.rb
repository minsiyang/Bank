class Account

  attr_reader :balance, :transaction_history
  
  def initialize
    @balance = 0
    @transaction_history = []
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    @balance -= amount
  end

#   def print_statement
#   end

end
