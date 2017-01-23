class Bank

  attr_reader :statement, :balance

  def initialize
    @balance = 0
    @statement = []
  end

  def deposit(money)
    date = Date.today.to_s
    @balance += money
    transaction = { date: date, credit: money, debit: 0, balance: @balance }
    @statement << transaction
  end

  def withdraw(money)
    date = Date.today.to_s
    @balance -= money
    transaction = { date: date, credit: 0, debit: money, balance: @balance }
    @statement << transaction
  end

  def format_data
    @statement.collect {|data| "#{data[:date]}".ljust(15) + " | " +  "#{data[:credit]}".ljust(15) + " | " + "#{data[:debit]}".ljust(15) + " | " +  "#{data[:balance]}".ljust(15)}
  end

  def print_statement
    puts "Date".ljust(15) + " | " + "Credit".ljust(15) + " | " + "Debit".ljust(15) + " | " + "Balance".ljust(15)
    puts format_data
  end


end
