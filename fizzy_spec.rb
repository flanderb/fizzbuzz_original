#require "rspec"
require_relative "fizzbuzzClassy.rb"

describe FizzBuzz do
	describe "to_text" do
		it "should return correct results for 30" do
			fb = FizzBuzz.new(30)
			fb.to_text.should == "1-2-Fizz-4-Buzz-Fizz-7-8-Fizz-Buzz-11-Fizz-13-14-FizzBuzz-16-17-Fizz-19-Buzz-Fizz-22-23-Fizz-Buzz-26-Fizz-28-29-FizzBuzz"
		end
	end
	describe "fizz_buzz_single" do 
		it "should return Fizz for 9" do
			fb = FizzBuzz.new(30)
			fb.fizz_single(9).should == "Fizz"
		end
		
		it "should return Buzz for 10" do
			fb = FizzBuzz.new(30)
			fb.fizz_single(10).should == "Buzz"
		end
		
		it "should return 11 for 11" do
			fb = FizzBuzz.new(30)
			fb.fizz_single(11).should == "11"
		end
		
		it "should return FizzBuzz for 30" do
			fb = FizzBuzz.new(30)
			fb.fizz_single(30).should == "FizzBuzz"
		end
	end
end

