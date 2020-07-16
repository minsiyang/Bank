require "statement"

describe Statement do
  subject(:statement) { Statement.new }
  let(:transaction) { double(date: '16/07/2020', credit: 100.00, debit: nil, balance: 100.00) }
  let(:transaction_history) { [transaction] }

  describe "#header" do
    it "output the header" do
      expect { statement.header }.to output("Date    || Credit || Debit || Balance \n").to_stdout
    end
  end

  describe "#print" do
    it "can print the transaction history" do
      expect { statement.print(transaction_history) }.to output("Date    || Credit || Debit || Balance \n"\
      "16/07/2020 || 100.00 ||  || 100.00\n"
      ).to_stdout
    end
  end
end
