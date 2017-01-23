require 'bank.rb'

describe Bank do

  context "Keeps track of the user's balance and transaction dates" do

    it 'allows user to deposit money' do
      bank = Bank.new
      bank.deposit(100)
      expect(bank.statement).to eq([100])
    end

  end

end
