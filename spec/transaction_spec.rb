require "transaction"

describe Transaction do

  let(:time) { Time.now.strftime("%d/%m/%Y") }
  let(:deposit_transaction) { Transaction.new(credit: 50, balance: 50) }
  let(:withdraw_transaction) { Transaction.new(debit: 100, balance: 50) }

  describe "it initialize with a deposit transaction" do
    
    it "should have a date when initialize" do
      expect(deposit_transaction.date).to eq time
    end

    it "should have a credit when initialize" do
      expect(deposit_transaction.credit).to eq 50
    end

    it "should have a debit value of nil" do
      expect(deposit_transaction.debit).to eq nil
    end
 
    it "should have a balance when initialize" do
      expect(deposit_transaction.balance).to eq 50
    end
  end
  
  describe "it initialize with a withdraw transaction" do
    
    it "should have a date when initialize" do
      expect(withdraw_transaction.date).to eq time
    end

    it "should have a credit when initialize" do
      expect(withdraw_transaction.credit).to eq nil
    end

    it "should have a debit value of nil" do
      expect(withdraw_transaction.debit).to eq 100
    end
 
    it "should have a balance when initialize" do
      expect(withdraw_transaction.balance).to eq 50
    end
  end
  
end
