require 'bank.rb'

describe Bank do

  subject(:bank) { described_class.new }
  let(:date) { double(:date) }

  before do
    bank.deposit(100)
  end

  context "Keeps track of the user's balance and transaction dates" do

    it 'allows user to deposit money' do
      expect(bank.balance).to eq(100)
    end

    it 'allows a user to withdraw money' do
      bank.withdraw(50)
      expect(bank.balance).to eq(50)
    end

    it 'assigns dates to each user deposit' do
      expect(bank.statement).to eq([{ transaction_date: "2017-01-23", credit: 100, debit: 0, balance: 100 }])
    end

    it 'assigns dates to each user withdrawl' do
      bank.withdraw(50)
      expect(bank.statement).to include({ transaction_date: "2017-01-23", credit: 0, debit: 50, balance: 50 })
    end

    it 'has a statement with credits, debits, dates, and balance' do
      expect(bank.print_statement).to include("date, credit, debit, balance")
    end

  end

end
