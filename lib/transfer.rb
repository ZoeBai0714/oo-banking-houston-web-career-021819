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
    #@sender.balance -= amount
    #@receiver.balance += amount
   #@status = "complete"
    if @status == "complete"
      @sender.balance
      @receiver.balance
    else
      @sender.balance -= amount
      @receiver.balance += amount
      @status = "complete"
    end
  end
end
