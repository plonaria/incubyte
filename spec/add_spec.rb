require './sum.rb'

RSpec.describe Sum do 
	it 'Class sum' do 
		sum = Sum.new
		expect(sum).to be_kind_of(Sum)
	end

	it 'add digit function' do 
		sum = Sum.new
		expect(sum).to respond_to(:add_digit)
	end

end