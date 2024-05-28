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

	it 'will sum the digits' do 
		sum = Sum.new
		expect(sum.add_digit(123)).to eq(6)
	end

	it 'can handle any amount of number' do 
		sum = Sum.new
		expect(sum.add_digit([12,123,1234])).to eq(19)
	end

	it 'can handle a new line between numbers' do
		sum = Sum.new
		expect(sum.add_digit("12\n,3")).to eq(6)
	end

	it 'supports different delimiters' do
		sum = Sum.new
		expect(sum.add_digit("//;\n1;2")).to eq(3)
	end

	it 'will throw and exception on negative number' do 
		sum = Sum.new
		expect {sum.add_digit(-123)}.to raise_error(ArgumentError, 'Negative number: -123 is not allowed')
		expect { sum.add_digit(3, -5) }.to raise_error(ArgumentError, 'Negative number: -5 is not allowed')
    expect { sum.add_digit("//;\n8;-1") }.to raise_error(ArgumentError, 'Negative number: -1 is not allowed')
	end
end