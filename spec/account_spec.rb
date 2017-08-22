require './lib/account.rb'

describe Account do
  it 'needs a pincode to access account' do
    expect(subject.pincode).to eq 0000
  end
end
