require 'pry'

class Transfer
  attr_accessor :sender, :receiver, :amount
  attr_reader :status

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
    @amount = amount
  end

  def valid?
    #sender.status == "open" && receiver.status == "open"
    sender.valid? && receiver.valid?
  end

  def execute_transaction
    if (@status == "pending")
<<<<<<< HEAD
      #binding.pry
      if sender.balance >= @amount && @sender.status == "open" && @receiver.status == "open"
=======
      binding.pry
      if sender.balance >= @amount
>>>>>>> 20eed4f12b9980d080617bf33a86462b1a0c4dfa
        @sender.balance -= @amount
        @receiver.balance += @amount
        @status = "complete"
      else
        @status = "rejected"
        "Transaction rejected. Please check your account balance."
      end
    end
<<<<<<< HEAD
  end

  def reverse_transfer
    if @status == "complete"
      @receiver.balance -= @amount
      @sender.balance += @amount
      @status = "reversed"
    end
=======

>>>>>>> 20eed4f12b9980d080617bf33a86462b1a0c4dfa
  end

end
