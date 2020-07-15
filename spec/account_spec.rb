require "account"

describe Account do
  subject(:account) { Account.new }

  it "has a default balance of 0 when initialize" do
    account = Account.new
    expect(account.balance).to be 0
  end

  describe "#deposit" do
    it "user can deposit money into account" do
      account = Account.new
      account.deposit(100)
      expect(account.balance).to be 100
    end
  end

  describe "#withdraw" do
    it "user can withdraw money from account" do
      account.deposit(200)
      account.withdraw(50)
      expect(account.balance).to be 150
    end
  end
end