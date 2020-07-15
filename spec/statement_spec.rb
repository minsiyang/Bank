require "statement"

describe Statement do
  subject(:statement) { Statement.new }
  
#   let(:transaction_history) {
#     [{ }]
#   }

  describe "#header" do
    it "output the header" do
      expect { statement.header }.to output(" Date    || Credit || Debit || Balance \n").to_stdout
    end
  end

#   describe "#print" do
#     let(:statement) do
#         " Date    || Credit || Debit || Balance\n" \
#         " 14/07/20 || 50.00 || ----- || 50.00 \n" \
#         " 14/07/20 || ----- || 20.00 || 30.00 \n"
#     end

#     it "can print the transaction history" do
#       expect { statement.print(transaction_history) }.to output(statement).to_stdout
#     end
#   end
end
