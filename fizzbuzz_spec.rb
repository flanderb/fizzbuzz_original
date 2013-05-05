require_relative "fizzbuzz.rb"
describe Fizzy do
	describe "to_text" do
		it "Should return the correct fizzbuzz for 1-30" do
			fb = Fizzy.new(30)
			fb.to_s.should eq("1,2,Fizz,4,Buzz,Fizz,7,8,Fizz,Buzz,11,Fizz,13,14,FizzBuzz,16,17,Fizz,19,Buzz,Fizz,22,23,Fizz,Buzz,26,Fizz,28,29,FizzBuzz")
		end
	end
	describe "to_html" do
		it "Should output the html" do 
			fb = Fizzy.new(15)
			fb.to_html.should eq(<<-END_OF_STRING
<ul>
<li>1</li>
<li>2</li>
<li>Fizz</li>
<li>4</li>
<li>Buzz</li>
<li>Fizz</li>
<li>7</li>
<li>8</li>
<li>Fizz</li>
<li>Buzz</li>
<li>11</li>
<li>Fizz</li>
<li>13</li>
<li>14</li>
<li>FizzBuzz</li>
</ul>
END_OF_STRING
)
		end
	end
	describe "to_json" do
		it "Should output json" do
			fb = Fizzy.new(15)
			fb.to_json.should eq('["1","2","Fizz","4","Buzz","Fizz","7","8","Fizz","Buzz","11","Fizz","13","14","FizzBuzz"]')
		end
	end
	
	describe "to_a" do
		it "Should output an array" do
			fb = Fizzy.new(15)
			fb.to_a.should eq(["1","2","Fizz","4","Buzz","Fizz","7","8","Fizz","Buzz","11","Fizz","13","14","FizzBuzz"])
		end
	end
	
	describe "fizz_single" do
		it "9 should return Fizz" do
			fb_array = Fizzy.new(30).to_a
			fb_array[8].should eq("Fizz")
		end
		
		it "10 Should return Buzz" do
			fb = Fizzy.new(10)
			fb.to_a.last.should eq("Buzz")
		end
		
		it "11 Should return 11" do
			fb = Fizzy.new(11)
			fb.to_a.last.should eq("11")
		end
		
		it "30 Should return FizzBuzz" do
			fb = Fizzy.new(30)
			fb.to_a.last.should eq("FizzBuzz")
		end
		
	end
	
end

