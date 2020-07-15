class Transaction

  attr_reader :value, :balance

  def initialize(value, balance)
    @value = value
    @balance = balance
  end

end
