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
  
  account1 = BankAccount.new("Alice", 1000)
  account2 = BankAccount.new("Bob", 500)
  
  puts "Number of accounts: #{BankAccount.number_of_accounts}"
  puts "#{account1.name}'s balance: #{account1.balance}"
  puts "#{account2.name}'s balance: #{account2.balance}"
  
  account1.deposit(500)
  account2.withdraw(200)
  
  puts "#{account1.name}'s balance after deposit: #{account1.balance}"
  puts "#{account2.name}'s balance after withdrawal: #{account2.balance}"
  