class Transfer
  # your code here
  attr_accessor :sender, :receiver, :status, :amount
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end
  
  def valid?
    if @sender.valid? && @receiver.valid?
      return true
    end
  end
  
  def execute_transaction
    BankAccount.sender.balance -= amount
    BankAccount.receiver.balance += amount
  end
end
