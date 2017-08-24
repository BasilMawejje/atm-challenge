require './lib/account'
require 'date'

describe Account do
  let(:person) {instance_double('Person', name: 'Basil')}
  subject { described_class.new({owner: person}) }

  it 'check the length of pincode' do
    pincode = '1234'
    expect(pincode.length).to eq 4
  end

  it 'expires in exactly 5 years from initialize' do
    expected_date = Date.today.next_year(5).strftime("%m/%y")
    expect(subject.exp_date).to eq expected_date
  end

  it 'has a balance of 0 on initialize' do
    expect(subject.balance).to eq 0
  end

  it 'has account status :active on initialize' do
    expect(subject.account_status).to eq :active
  end

  it 'deactivates account using an instance method' do
    subject.deactivate
    expect(subject.account_status).to eq :deactivated
  end

  it 'has an account owner' do
    expect(subject.owner).to eq person
  end

  it 'raises an error if no owner is set' do
    expect { described_class.new }.to raise_error 'An account owner is required'
  end

end
