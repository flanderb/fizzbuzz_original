require "json"

class Fizzy
	
	def initialize(max)
		@output = (1..max).map do |num|
			Fizzy.fizz_single(num)
		end
	end
	
	def to_text
		@output.join(",")
	end
	
	def to_html
		collector = "<ul>\n"
		@output.each do |num|
			collector += "<li>#{num}</li>\n"
		end
		collector += "</ul>\n"
	end
	
	def to_json
		JSON.generate(@output)
	end
	
	def self.fizz_single(num)
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

if __FILE__ == $0
	f = Fizzy.new(30)
	puts f.to_text
	puts f.to_html
	puts f.to_json
	puts Fizzy.fizz_single(3.2)
	puts Fizzy.fizz_single(-15)
end

