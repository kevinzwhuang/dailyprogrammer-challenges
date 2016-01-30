# Simple Exponent Method

def simple_exponents(base, n)
	
	([base] * n).reduce(&:*)
	# Breakdown:
	# [base, base, base, base..... n number of base elements]
	# Reduce => multiply each
end
