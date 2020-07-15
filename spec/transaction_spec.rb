require "transaction"

describe Transaction do
  subject(:transaction) { Transaction.new(40, 40)}
  let(:time) { Time.now.strftime("%d/%m/%Y") }

  it "should have an value when initialize" do
    expect(transaction.value).to eq 40
  end

  it "should have a balance when initialize" do
    expect(transaction.balance).to eq 40
  end

  it "should have a date when initialize" do
    expect(transaction.date).to eq time
  end
  
end