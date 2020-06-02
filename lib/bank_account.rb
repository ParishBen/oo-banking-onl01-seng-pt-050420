class BankAccount
  attr_accessor :status, :balance
  attr_reader :name
  @@all = []
def initialize(name)
  @name=name
  @balance = 1000
  @status = "open"
  @@all << self
end
def deposit(value)
  @balance +=value.to_i
end
def display_balance
  "Your balance is $#{self.balance}."
end
def valid?
  self.status == "open" && self.balance > 0 ? true : false
 end
 def close_account
   @status = "closed"
end
def self.all
  @@all
end
end
