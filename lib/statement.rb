class Statement
  def header
    puts " Date    || Credit || Debit || Balance "
  end

  def print(transaction_history)
    header
    transaction_history.reverse.each do |transaction|
      puts "#{transaction.date} || #{transaction.credit} || #{transaction.debit} || #{transaction.balance}"
    end
  end
end
