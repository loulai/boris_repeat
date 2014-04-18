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
		person_two = Person.new
		my_station = double :station, release_bike: Bike.new
 		# class :my_station.to_s.capitalize
 		# 	def release_bike
 		# 		Bike.new
 		# 	end
		# end 
		expect(my_station).to receive(:release_bike)
		person_two.rent_bike_from(my_station)
		expect(person_two).to have_bike
	end


end