# goal of statement class is to track and format the bank transactional data into a printable table

require_relative 'bank.rb'

class Statement

  attr_reader :transaction

  def initialize(transactions)
    @transactions = transactions
  end



end
