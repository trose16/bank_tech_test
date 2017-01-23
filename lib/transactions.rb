require_relative 'transactions'

# goal of transactions class is to take a single transaction and put them in a full list of multiple transactions

class Transactions

  attr_reader :transactions

  def initialize
    @transactions = []
  end

  def track_transaction(transaction)
    @transactions << transaction
  end


end
