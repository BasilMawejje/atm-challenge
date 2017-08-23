require './lib/atm'

class Person
  attr_accessor :name, :cash, :account

  def initialize(attr = {})
    if attr.key?(:name)
      @name = attr[:name]
      @cash = 0
      @account = nil
      create_account
      deposit(cash)
      no_account
    else
      no_name
    end
  end

  def create_account
    @account = Account.new(owner: self)
  end

  def deposit(cash)
    cash > 0
  end

  def no_name
    raise 'A name is required'
  end

  def no_account
    raise RuntimeError, 'No account present'
  end
end
