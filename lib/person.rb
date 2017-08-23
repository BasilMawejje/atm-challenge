class Person
  attr_accessor :name, :cash, :account

  def initialize(attr = {})
    if attr.key?(:name)
      @name = attr[:name]
      @cash = 0
      @account = nil
      create_account
    else
      no_name
    end
  end

  def create_account
    @account = Account.new(owner: self)
  end

  def no_name
    raise 'A name is required'
  end
end
