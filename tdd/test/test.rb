require 'minitest/autorun'
require '../bank_account'
require 'factory_girl'

FactoryGirl.find_definitions

class TestBankAccount < MiniTest::Test

  include FactoryGirl::Syntax::Methods

  def setup
    # @account = BankAccount.new(200)
    @account = build(:bank_account)
  end

  def test_bank_account_is_not_nil
    # refute_nil -> fails if is nul
    refute_nil @account
  end

  def test_account_has_a_withdraw_method
    # got a way to withdraw money
    assert @account.respond_to?(:withdraw) # true if withdraw exists
  end

  def test_account_has_a_deposit_method
    # got a way to deposit money
    assert @account.respond_to?(:deposit) # true if withdraw exists
  end

  def test_withdraw_removes_money_from_account
    # substract money
    @account.withdraw(100)
    assert_equal 100, @account.amount
  end

  def test_deposit_adds_money_from_account
    # substract money
    @account.deposit(200)
    assert_equal @account.amount, 400
  end

  def test_cant_withdraw_more_money_that_it_has
    assert_raises ArgumentError do
      @account.withdraw(300)
    end
  end

  def test_initial_value_for_bank_account
    # assign initial value for creating a bank account
    assert_equal @account.amount, 200
  end

  def test_can_assign_a_name_to_ba
    @account.name = "My Bank Account"
    assert_equal @account.name, "My Bank Account"
  end

  def test_name_should_contain_at_least_two_words
    assert_raises ArgumentError do
      @account.name("this word")
    end
  end
end
