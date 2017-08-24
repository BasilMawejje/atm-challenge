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
    else
      no_name
      no_deposit
    end
  end

  def create_account
    @account = Account.new(owner: self)
  end

  def deposit(cash)
    @account != nil
    cash > 0
  end

  def no_name
    raise 'A name is required'
  end

  def no_deposit
      raise 'No account present'
  end
end
