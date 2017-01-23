# goal of statement class is to track and format the bank transactional data into a printable table

require_relative 'bank.rb'

class Statement

  attr_reader :bank_data, :transaction

  def initialize(transaction)
    @transaction = transaction
    @bank_data = []
  end

  def add

  def print_statement

  end


end
