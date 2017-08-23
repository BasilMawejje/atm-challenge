class Person
  attr_accessor :name, :cash, :account

  def initialize(attr = {})
    @name = Person.name
    @cash = 0
    @account = nil
  end
end
