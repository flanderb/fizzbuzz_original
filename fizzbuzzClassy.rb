class Fizzbuzz 
	def self.fizzBuzz (begin_number, end_number)
		(begin_number..end_number).map do |n|
			if n % 15 == 0
				"FizzBuzz"
			elsif n % 3 == 0
				"Fizz"
			elsif n % 5 == 0
				"Buzz"
			else  
				n
			end
		end
	end
end

p Fizzbuzz.fizzBuzz(15, 15)

