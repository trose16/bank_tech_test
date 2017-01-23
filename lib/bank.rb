class Bank

  attr_reader :statement, :balance

  def initialize
    @balance = 0
    @statement = []
  end

  def deposit(money, date)
    date = Date.today.to_s
    @balance += money
    transaction = { transaction_date: date, deposit: money }
    @statement << transaction
  end

  def withdraw(money, date)
    @balance -= money
    @statement << @balance
  end

end
