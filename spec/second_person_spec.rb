require "second_bike"
require "second_person"


describe Person do

let (:bike) {Bike.new} # == bike = Bike.new
let (:person) {Person.new}
let (:person_with_bike) {Person.new(bike)}

	it 'has no bike when created' do
		expect(person).not_to have_bike
	end


	it 'can have a bike' do
		expect(person_with_bike).to have_bike
	end

	it 'can have a bike accident' do
		# bike = double :bike
		# expect(bike).to respond_to(:break!)
		person_with_bike.fall_down
	end

	it 'can rent a bike from a docking station' do
		my_station = double :station, release_bike: Bike.new
 		# class :my_station.to_s.capitalize
 		# 	def release_bike
 		# 		Bike.new
 		# 	end
		# end 
		expect(my_station).to receive(:release_bike)
		person.rent_bike_from(my_station)
		expect(person).to have_bike
	end

	it 'can return a bike to a docking station' do
		# person_with_bike = Person.new(bike)
		my_station = double :station
		expect(my_station).to receive(:dock).with(:bike)
		person_with_bike.return_bike_to(my_station)

	end

	it 'will not have a bike after returning it' do
		my_station = double :station, dock: nil 
		expect(my_station).to receive(:dock).with(:bike)
		person_with_bike.return_bike_to(my_station)
		expect(person_with_bike).not_to have_bike
	end



end