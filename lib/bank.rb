require_relative 'statement'
require_relative 'transaction'
require_relative 'transactions'

class Bank

  attr_reader :statement, :balance, :account_transactions

  def initialize(transaction = nil, statement = nil)
    @account_transactions = transaction
    @statement = statement
  end

  def deposit(transaction)
    @account_transactions << transaction
  end

  def withdraw(transaction)
    @account_transactions << transaction
  end

  def format_data
    @account_transactions.collect {|data| "#{data[:date]}".ljust(15) + " | " +  "#{data[:credit]}".ljust(15) + " | " + "#{data[:debit]}".ljust(15) + " | " +  "#{data[:balance]}".ljust(15)}
  end

  def print_statement
    puts "Date".ljust(15) + " | " + "Credit".ljust(15) + " | " + "Debit".ljust(15) + " | " + "Balance".ljust(15)
    puts format_data
  end


end
