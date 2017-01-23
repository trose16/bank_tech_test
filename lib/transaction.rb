# goal of transaction class is provide fx for creating credit, debits, calculate balance and track dates

class Transaction

  attr_reader :credit, :debit, :balance

  def initialize(credit = 0, debit = 0)
    @date = Date.today.to_s
    @credit = credit
    @debit = debit
    @balance = credit - debit
  end

end
