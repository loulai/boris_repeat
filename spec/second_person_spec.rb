require "second_bike"
require 'second_person'


describe Person do

let (:bike) {Bike.new} # == bike = Bike.new
let (:person) {Person.new(bike)}

	it 'has no bike when created' do
		expect(Person.new).not_to have_bike
	end


	it 'can have a bike' do
		expect(person).to have_bike
	end

	it 'can have a bike accident' do
		# bike = double :bike
		# expect(bike).to respond_to(:break!)
		person.fall_down
	end

	it 'can rent a bike from a docking station' do
		station = double :station, release_bike: :bike
 		# class :station.to_s.capitalize
 		# 	def release
 		# 		:bike
 		# 	end
		# end 
		expect(station).to receive(:release_bike)
		person.rent_bike_from(station)
		expect(person).to have_bike
	end


end