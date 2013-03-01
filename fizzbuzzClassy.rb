require "json"

class FizzBuzz
	#attr_accessor :begin_number, :end_number
	
	def initialize(begin_number, end_number)
		@fizz_buzz = (begin_number..end_number).map do |n|
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
	
	def text
		@fizz_buzz.join(",")
	end
		
	def html
		collector = "<ul>"
		@fizz_buzz.each do |fb|
			collector += "<li> #{fb} </li>"
		end
		collector += "</ul>"
	end
	
	def json
		JSON.generate( @fizz_buzz )
	end
		
end

test = FizzBuzz.new(1,15)
p test.text
p test.html
p test.json
