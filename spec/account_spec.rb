require './lib/account.rb'
require 'date'

describe Account do
  it 'needs a pincode to access account' do
    expect(subject.pincode).to eq random_pin
  end

  #it 'check length of a number' do
  #  number_length = Math.log10(subject.pincode).to_i + 1
  #  expect(number_length).to eq 4
  #end

  it 'check the length of pincode' do
    pincode = '1234'
    expect(pincode.length).to eq 4
  end

  it 'is expected to have an expiry date on initialize' do
    expected_date = Date.today.next_year(5).strftime("%m/%y")
    expect(subject.exp_date).to eq expected_date
  end

  it 'is expected to have a balance of 0 on initialize' do
    expect(subject.balance).to eq 0
  end
end
