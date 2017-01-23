require 'bank.rb'

describe Bank do

  subject(:bank) { described_class.new }
  let(:date) { double(:date) }

  before do
    bank.deposit(100, date)
  end

  context "Keeps track of the user's balance and transaction dates" do

    it 'allows user to deposit money' do
      expect(bank.balance).to eq(100)
    end

    it 'allows a user to withdraw money' do
      bank.withdraw(50, date)
      expect(bank.balance).to eq(50)
    end

    it 'assigns dates to each user deposit' do
      expect(bank.statement).to eq([{ transaction_date: "2017-01-23", deposit: 100 }])
    end

  end

end
