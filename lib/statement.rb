class Statement
  def header
    puts " Date    || Credit || Debit || Balance "
  end

  def print(transaction_history)
    transaction_history.reverse_each do |transaction|
      print transaction
    end
  end
end
