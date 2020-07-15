class Transaction

  attr_reader :value, :balance, :date

  def initialize(value, balance)
    @value = value
    @balance = balance
    @date = Time.now.strftime("%d/%m/%Y")
  end

end
