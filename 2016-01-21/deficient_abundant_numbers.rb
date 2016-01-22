def abundance_checker(a)
	a.each { |x| puts number_abundance(x)}
end

def number_abundance(n)
	sigma = calculate_sigma(n)
	number_type = check_d_a( n, sigma)
	print_result( n, number_type)
end

def calculate_sigma(n, sigma = 0)
	(1..n).each {|x| sigma += x if n % x == 0 }
	sigma
end

def check_d_a(n, sigma)
	if sigma < 2 * n
	 "deficient"
	elsif sigma > 2 * n
	 "abundant by #{(sigma - 2*n).to_s}"
	else
	 "~~neither~~"
	end
end

def print_result(n, string)
	"#{n.to_s} #{string}"
end


abundance_checker([111,112,220,69,134,85])