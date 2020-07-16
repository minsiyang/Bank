require_relative "transaction"

class Account
  
  DEFAULT_BALANCE = 0
  attr_reader :balance, :transaction_history
  
  def initialize(transaction = Transaction)
    @balance = DEFAULT_BALANCE
    @transaction_history = []
    @transaction = transaction
  end

  def deposit(amount)
    @balance += amount
    @transaction_history.push(@transaction.new(credit: amount, balance: @balance))
  end

  def withdraw(amount)
    @balance -= amount
    @transaction_history.push(@transaction.new(debit: amount, balance: @balance))
  end

#   def print_statement
#   end

end
