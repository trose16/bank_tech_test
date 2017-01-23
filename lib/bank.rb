class Bank

  attr_reader :statement, :balance

  def initialize
    @balance = 0
    @statement = []
  end

  def deposit(money)
    date = Date.today.to_s
    @balance += money
    transaction = { transaction_date: date, credit: money, debit: 0, balance: @balance }
    @statement << transaction
  end

  def withdraw(money)
    date = Date.today.to_s
    @balance -= money
    transaction = { transaction_date: date, credit: 0, debit: money, balance: @balance }
    @statement << transaction
  end

  def format_data
    @statement.collect {|data| "#{data[:transaction_date]} |".ljust(10) "#{data[:credit]} |".ljust(10) "#{data[:debit]} |".ljust(10) "#{data[:balance]} |".ljust(10) }
  end

  def print_statement
    puts "Date |".ljust(10) + "Credit |".ljust(10) + "Debit |".ljust(10) + "Balance |".ljust(10)
    puts format_data
  end


end
