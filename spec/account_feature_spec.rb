require "account"

describe "Account Feature Test" do
  it "deposit 1000, 2000 and withdraw 500" do
    time_one = Time.new(2012, 1, 10)
    time_two = Time.new(2012, 1, 13)
    time_three = Time.new(2012, 1, 14)

    account = Account.new

    allow(Time).to receive(:now).and_return(time_one)
    account.deposit(1000)

    allow(Time).to receive(:now).and_return(time_two)
    account.deposit(2000)

    allow(Time).to receive(:now).and_return(time_three)
    account.withdraw(500)

    statement = "date    || credit || debit || balance \n"\
                "14/01/2012 ||  || 500.00 || 2500.00\n"\
                "13/01/2012 || 2000.00 ||  || 3000.00\n"\
                "10/01/2012 || 1000.00 ||  || 1000.00\n"

    expect { account.print_statement }.to output(statement).to_stdout

  end
end
