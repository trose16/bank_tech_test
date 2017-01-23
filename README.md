PROJECT DESCRIPTION
  Bank tracks the user's debit/credit's along with transaction dates and a rolling balance.

TO USE APP
  In pry or IRB require './lib/bank.rb'
  bank = Bank.new
    To make a deposit > bank.deposit(amount)
    To make a withdrawl > bank.withdraw(amount)
    To see current balance > bank.balance
    To see your all statement transactions > bank.print_statement

TO RUN TESTS
  run bundle (to install rspec gem)
  $ rspec

USER STORIES FOR BANK TECH TEST
  As a bank user
  So that I may keep keep my money safe
  I’d like to make a deposit at my bank & see it added to my statement balance.

  As a bank user
  So that I may utilize my money
  I’d like to be able to withdraw money and see it subtracted from my statement balance.

  As a bank user
  So that I may check for accuracy
  I’d like to be able to see my statement balance reflect the amounts of my credits/debits with their respective dates.
