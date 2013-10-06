require 'spec_helper'
require_relative '../lib/fib_seq'

describe "#fibonacci"  do
	it "should have a method called fibonacci" do
		expect(method(:fibonacci))
	end
	
	it "should have one required argument named n" do
		parameters = method(:fibonacci).parameters
		expect(parameters[0]).to include(:req)
		expect(parameters[0]).to include(:n)
		expect(parameters.length).to eq 1
	end

	it "should return an array of n numbers in the sequence" do
		expect(fibonacci(1)).to eq [1]
		expect(fibonacci(2)).to eq [1,1]
		expect(fibonacci(3)).to eq [1,1,2]
		expect(fibonacci(4)).to eq [1,1,2,3]
		expect(fibonacci(9)).to eq [1,1,2,3,4,5,8,13,21,34]
	end

end