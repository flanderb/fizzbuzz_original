
def fizzbuzz (maxNum)
	output = Array.new
	(1..maxNum).each do |num|
		if num % 15 == 0
			output << "FizzBuzz"
		elsif num % 5 == 0
			output << "Buzz"
		elsif num % 3 == 0
			output << "Fizz"
		else
			output << num
		end
	end
	return output
end

puts fizzbuzz(30).instance_of?



