class Account
  
  DEFAULT_BALANCE = 0
  attr_reader :balance, :transaction_history
  
  def initialize
    @balance = DEFAULT_BALANCE
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
