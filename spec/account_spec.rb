require "account"

describe Account do
  it "has a default balance of 0 when initialize" do
    account = Account.new
    expect(account.balance).to be 0
  end

  describe "#deposit" do
    it "increase the balance with the deposit amount" do
      account = Account.new
      account.deposit(100)
      expect(account.balance).to be 100
    end
  end
end