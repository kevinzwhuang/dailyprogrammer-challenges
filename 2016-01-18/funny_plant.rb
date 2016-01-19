# Pseudocode:
#
# => funny plant method
# => input: num of people, num of fruits
# => output: number of weeks to feed the people
# => steps:
# => Create an array for the harvest
# => ASSIGN 0 to weeks
# => ASSIGN 1 to harvest_sum
# => DO
# =>   EACH plant in harvest
# =>      ADD 1
# =>   PUSH 0 into into harvest for harvest_sum times
# =>   ASSIGN sum of plants in harvest to harvest_sum
# => WHILE sum of harvest is less than people
# => 

def funny_plant(num_people, num_fruits)
	harvest = []
	weeks = 1
	harvest_sum = 0
	num_fruits.times {
		harvest << 0
	}
	while harvest_sum < num_people
		harvest.map!{ |v|
			v + 1
		}
		harvest_sum = harvest.reduce{|sum, n| sum + n }
		harvest_sum.times {
			harvest << 0
		}
		weeks += 1
	end
	weeks
end

puts funny_plant(200, 15)
puts funny_plant(50000, 1)
puts funny_plant(150000, 250)