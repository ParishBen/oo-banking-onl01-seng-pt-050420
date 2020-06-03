class Transfer
  # your code here
  attr_reader :sender, :receiver, :amount, :valid
  attr_accessor :status
  def initialize(sender, receiver, amount)
    @sender= sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
    
  end
  def valid?
<<<<<<< HEAD
   sender.valid? && receiver.valid?
   end
  
  def execute_transaction
     if valid? && sender.balance > amount && self.status == "pending"
      sender.balance -= amount
      receiver.balance += amount
      self.status = "complete"
    else
      self.status = "rejected"
      "Transaction rejected. Please check your account balance."
    end
  end

  def reverse_transfer
    if valid? && receiver.balance > amount && self.status == "complete"
      receiver.balance -= amount
      sender.balance += amount
      self.status = "reversed"
    else
      self.status = "rejected"
      "Transaction rejected. Please check your account balance."
    end
  end
=======
    sender = BankAccount.all.find {|sender| sender == @sender}
    receiver = BankAccount.all.find {|receiver| receiver == @receiver}
    sender.valid? && receiver.valid? ? true : false
   end
  def execute_transaction
     sender = BankAccount.all.find {|sender| sender == @sender}
    receiver = BankAccount.all.find {|receiver| receiver == @receiver}
    if !sender.valid?
       "Transaction rejected. Please check your account balance"
      self.status = "rejected"
    end
    if @amount> sender.balance
      
      sender.balance -= @amount
      receiver.balance += @amount
     self.status = "complete"
   end
 
  
>>>>>>> 3fa1b10d2cc26f631c09e80ef5914478e6806a17
end
