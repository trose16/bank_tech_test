require 'bank.rb'

describe Bank do

  let(:bank) {described_class.new}

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

    it 'assigns knows the dates of user transactions' do


    end

  end

end
