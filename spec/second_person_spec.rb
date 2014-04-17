require "bike"
require 'second_person'


describe Person do

let (:person) {Person.new(:bike)}

	it 'has no bike when created' do
		expect(Person.new).not_to have_bike
	end


	it 'can have a bike' do
		expect(person).to have_bike
	end

	it 'can have a bike accident' do
		# bike = double :bike
		bike = Bike.new 
		expect(bike).to receive(:break!)
	end

end