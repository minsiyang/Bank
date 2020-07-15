require "statement"

describe Statement do
  subject(:statement) { Statement.new }

  describe "#header" do
    it "output the header" do
      expect { statement.header }.to output(" Date || Credit || Debit || Balance \n").to_stdout
    end
  end
end
