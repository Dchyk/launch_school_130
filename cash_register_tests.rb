require 'simplecov'
SimpleCov.start
require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use!

require_relative 'cash_register'
require_relative 'transaction'

class CashRegisterTest < Minitest::Test
  def setup
    @register = CashRegister.new(100)
    @transaction = Transaction.new(25)
  end

  def test_accept_money
    @transaction.amount_paid = 25
    @register.accept_money(@transaction)
    assert_equal(125, @register.total_money)
  end

  def test_change
    @transaction = Transaction.new(20)
    @transaction.amount_paid = 31
    assert_equal(11, @register.change(@transaction))
  end

  def test_give_receipt
    @transaction = Transaction.new(15)
    @transaction.amount_paid = 15
    assert_output("You've paid $#{@transaction.item_cost}.\n") do
      @register.give_receipt(@transaction)
    end
  end

  
end