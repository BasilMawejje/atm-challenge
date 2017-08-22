class Account
  STANDARD_VALIDITY_YRS = 5

  attr_accessor :pin_code, :exp_date

  def initialize
    @pincode = random_pin
    @exp_date = Date.today.next_year(STANDARD_VALIDITY_YRS).strftime('%m/%y')
  end

  def random_pin
    rand(1000..9999)
  end
end
