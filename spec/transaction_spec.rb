require "transaction"

describe Transaction do
  subject(:transaction) { Transaction.new(40, 40)}

  it "should have an value when initialize" do
    expect(transaction.value).to eq 40
  end

  it "should have a balance when inirialize" do
    expect(transaction.balance).to eq 40
  end
  
end