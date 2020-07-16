class Statement
  def header
    puts "Date    || Credit || Debit || Balance "
  end

  def print(transaction_history)
    header
    prepare_statement(transaction_history)
  end

  private

  def prepare_statement(transaction_history)
    transaction_history.reverse.each do |transaction|
      puts "#{transaction.date} || #{pence(transaction.credit)} ||"\
        " #{pence(transaction.debit)} || #{pence(transaction.balance)}"
    end
  end

  def pence(amount)
    "%.2f" % amount unless amount.nil?
  end
end
