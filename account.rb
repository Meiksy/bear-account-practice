# For this file  we can add acounts to our bank, we havw 2 accounts.
# We can also insert/withdraw money to/from the account.




## Create a bank class
## Create a bank instance
## Create and account class
## Create several account instances
## A bank should have lots of accounts
## An account should have a balance instance variable
## Create a mthod to withdraw money from account

## Create a method to add money to account

## Create a check before withdraw on account to ensure balance does not go below 0.

require( 'pry-byebug' )

class Bank

  attr_reader( :accounts ) 

  def initialize()
    @accounts = []
  end

  def add_account(account)
    @accounts.push( account )
  end

end


class Account

  attr_reader(:name, :balance)

  def initialize(name, balance)
    @name = name
    @balance = balance
  end

  # def withdraw(amount)
  #   @balance > 0?
  #     if true
  #       puts "Not enough money."
  #     else
  #       @balance = @balance - amount
  #     end
  # end

  # if balance >= 0
  #   puts "No more money!"
  # end

  # if @balance >= 0
  #   puts "No more money!"
  # end

  def insert(amount)
    @balance = @balance + amount
  end

end

bank = Bank.new

account1 = Account.new( "Val Gibson", 400 )
account2 = Account.new( "Rick Henry", 1 )


binding.pry
nil