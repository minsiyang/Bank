require_relative "transaction"
require_relative "statement"

class Account
  
  DEFAULT_BALANCE = 0
  attr_reader :balance, :transaction_history
  
  def initialize(transaction = Transaction, statement=Statement.new)
    @balance = DEFAULT_BALANCE
    @transaction_history = []
    @transaction = transaction
    @statement = statement
  end

  def deposit(amount)
    @balance += amount
    @transaction_history.push(@transaction.new(credit: amount, balance: @balance))
  end

  def withdraw(amount)
    @balance -= amount
    @transaction_history.push(@transaction.new(debit: amount, balance: @balance))
  end

  def print_statement
    @statement.print(@transaction_history)
  end

end
