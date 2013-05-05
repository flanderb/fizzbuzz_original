require "json"

class Fizzy
	
	def initialize(max)
		@fizz_buzzed_array = (1..max).map do |num|
			fizz_single(num)
		end
	end
	
	def to_a
		@fizz_buzzed_array
	end
		
	def to_s
		@fizz_buzzed_array.join(",")
	end
	
	def to_html
		collector = "<ul>\n"
		@fizz_buzzed_array.each do |num|
			collector += "<li>#{num}</li>\n"
		end
		collector += "</ul>\n"
	end
	
	def to_json
		JSON.generate(@fizz_buzzed_array)
	end
	
	def fizz_single(num)
		if !num.is_a?(Numeric)
			raise ArgumentError.new("The number must be a numeric value - currently = #{num}")
		elsif num < 0
			raise ArgumentError.new("The number must be non negitive = currently = #{num}")
		elsif num % 15 == 0
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

if __FILE__ == $0
	f = Fizzy.new(30)
	puts f
	puts f.to_html
	puts f.to_json
	f2 = Fizzy.new(15)
	puts f2.to_a
end

