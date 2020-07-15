require "account"

describe Account do
  it "has a default balance of 0 when initialize" do
    account = Account.new
    expect(account.balance).to be 0
  end
end