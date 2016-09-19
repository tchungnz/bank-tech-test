class Bank

  attr_reader :balance

  def initialize
    @balance = 0
  end

  def make_deposit(amount)
    @balance += amount
  end

  def make_withdrawal(amount)
    @balance -= amount
  end


end
