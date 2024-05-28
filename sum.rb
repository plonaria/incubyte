class Sum

	def add_digit(num)
		result = num.to_s.chars.map(&:to_i).sum
		return result
	end
end