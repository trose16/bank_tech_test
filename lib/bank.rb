class Bank

  attr_reader :statement, :balance

  def initialize
    @balance = 0
    @statement = []
  end

  def deposit(money)
    @balance += money
    @statement << @balance
  end

end
