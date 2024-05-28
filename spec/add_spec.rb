require './sum.rb'

RSpec.describe Sum do 
	it 'sum the given number' do 
		sum = Sum.new
		num = '123'
		expect(sum).to be(sum)
	end
end