require "account"

describe Account do
  subject(:account) { Account.new(transaction, statement) }

  let(:transaction) { instance_double("transaction") }
  let(:statement) { instance_double("statement") }

  it "has a default balance of 0 when initialize" do
    expect(account.balance).to be Account::DEFAULT_BALANCE
  end

  it "has a empty transaction history when initialize" do
    expect(account.transaction_history).to eq []
  end

  describe "#deposit" do
    it "user can deposit money into account" do
      expect(transaction).to receive(:new).with(credit: 100.00, balance: 100.00) 
      account.deposit(100)
      expect(account.balance).to eq 100
      expect(account.transaction_history.length).to eq 1
    end
  end

  describe "#withdraw" do
    it "user can withdraw money from account" do
      expect(transaction).to receive(:new).with(credit: 200, balance: 200)
      account.deposit(200)

      expect(transaction).to receive(:new).with(debit: 50, balance: 150)
      expect { account.withdraw(50) }.to change { account.balance }.from(200).to(150)
      expect(account.transaction_history.length).to eq 2
    end
  end

  describe "#print_statement" do
    it "calls for #print from the statement class" do
      allow(statement).to receive(:print)
      account.print_statement
    end
  end

end
