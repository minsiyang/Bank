class Statement
  def header
    puts " Date    || Credit || Debit || Balance "
  end

  def print(transaction_history)
    header
    prepare_statement(transaction_history)
  end

  private

  def prepare_statement(transaction_history)
    transaction_history.reverse.each do |transaction|
      puts "#{transaction.date} || #{transaction.credit} ||"\
        " #{transaction.debit} || #{transaction.balance}"
    end
  end
end
