require "json"

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
	
	def self.text(begin_number, end_number)
		fizzBuzz(begin_number, end_number).to_s
	end
		
	def self.html(begin_number, end_number)
		collector = "<ul>"
		fizzBuzz(begin_number, end_number).each do |fb|
			collector += "<li> #{fb} </li>"
		end
		collector += "</ul>"
	end
	
	def self.json(begin_number, end_number)
		JSON.generate( fizzBuzz(begin_number, end_number) )
	end
		
end

p Fizzbuzz.fizzBuzz(1, 15)
p Fizzbuzz.text(1, 15)
p Fizzbuzz.html(1, 15)
p Fizzbuzz.json(1, 15)
