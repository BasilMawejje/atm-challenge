class Person
  attr_accessor :name, :cash, :account

  def initialize(attr = {})
    if @name != nil
      no_name
    else
      @name = Person.name
      @cash = 0
      @account = nil
    end
  end

  def create_account
  end

  def deposit
  end

  def no_name
    raise 'A name is required'
  end
end
