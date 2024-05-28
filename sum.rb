class Sum

	def add_digit(*nums)
		nums.each do |num|
			raise ArgumentError, "Negative number: #{num} is not allowed" if num < 0 
		end	
    nums.map { |num| num.to_s.chars.map(&:to_i).sum }.sum
	end
end