class BankAccount
    @@num_accounts = 0
  
    def initialize(balance)
      @balance = balance
      @@num_accounts += 1
    end
  
    def deposit(amount)
      @balance += amount
    end
  
    def withdraw(amount)
      if @balance >= amount
        @balance -= amount
      else
        puts "Insufficient funds"
      end
    end
  
    def balance
      @balance
    end
  
    def self.num_accounts
      @@num_accounts
    end
end
  

account1 = BankAccount.new(100)
account2 = BankAccount.new(200)
account3 = BankAccount.new(1200)

puts BankAccount.num_accounts   # output: 3

account1.deposit( 50)
puts account1.balance           # output: 150

account2.withdraw(100)
puts account2.balance           # output: 100

account3.deposit(5000)
puts account3.balance
account3.withdraw(700)
puts account3.balance