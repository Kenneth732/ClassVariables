class BankAccount
    attr_accessor :name, :balance
    
    @@number_of_accounts = 0
    
    def initialize(name, balance=0)
      @name = name
      @balance = balance
      @@number_of_accounts += 1
    end
    
    def deposit(amount)
      @balance += amount
    end
    
    def withdraw(amount)
      @balance -= amount
    end
    
    def self.number_of_accounts
      @@number_of_accounts
    end
  end

# create a new bank account with an initial balance of 1000
account1 = BankAccount.new("John Doe", 1000)
account2 = BankAccount.new("Dean Doe", 23000)

# deposit 500 into the account
account1.deposit(500)

# check the account balance
puts account1.balance
# output: 1500

account2.deposit(11000)
puts account2.balance