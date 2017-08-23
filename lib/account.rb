class Account
  STANDARD_VALIDITY_YRS = 5

  attr_accessor :pin_code, :exp_date, :balance, :account_status, :owner

  def initialize(attrs = {})
    @pincode = random_pin
    @exp_date = Date.today.next_year(STANDARD_VALIDITY_YRS).strftime('%m/%y')
    @balance = 0
    @account_status = :active
    set_owner(attrs[:owner])
  end

  def random_pin
    rand(1000..9999)
  end

  def set_owner(obj)
    obj == nil ?  missing_owner : @owner = obj
  end

  def deactivate
    @account_status = :deactivated
  end
end
