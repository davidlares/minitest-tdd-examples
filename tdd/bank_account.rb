class BankAccount

  attr_accessor :amount # generates set / get

  # def initialize(amount)
  #   # minimum code
  #   @amount = amount
  # end

  # if we use FactoryGirl, we cant use args on initialize
  def initialize
  end

  # accessor methods
  def name=(name)
    raise ArgumentError.new("Name should contain at least 2 words") unless name =~ /^\w+\s+\w+.*$/
    @name = name
  end

  def name
    @name
  end

  def withdraw(amount)
    raise ArgumentError.new("Insufficients funds") if @amount < amount
    @amount -= amount
  end

  def deposit(amount)
    @amount += amount
  end

end
