require "json"
class FizzBuzz
	def initialize(max)
		@output = (1..max).map do |num|
			fizz_single(num)
		end
	end
	
	def to_text
		@output.join("-")
	end
	
	def to_html
		collector = "<ul>\n"
		@output.each do |num|
			collector += "<li> #{num.to_s} <\\\li>\n"
		end
		collector += "<\\ul>\n"
	end
	
	def to_json
		JSON.generate(@output)
	end
	
	def fizz_single(num)
		if num % 15 == 0
			 "FizzBuzz"
		elsif num % 5 == 0
			 "Buzz"
		elsif num % 3 == 0 
			 "Fizz"
		else
			 num.to_s
		end
	end


end

#fb = FizzBuzz.new(30)
#puts fb.to_text
#puts fb.to_html
#puts fb.to_json
