# goal of transaction class is provide fx for creating credit, debits, tracking date and calculating balance

class Transactions

  attr_reader :debit, :credit, :balance

  def initialize(credit = 0, debit = 0)
    @date = Date.today.to_s
    @credit = credit
    @debit = debit
    @balance = credit - debit
  end


end
