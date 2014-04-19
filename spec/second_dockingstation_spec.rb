
require "second_bike"
require "second_person"
require "second_dockingstation"

describe "DockingStation" do

	let (:bike) {double :bike, broken?: :false}
	let (:station_w_no_bike) {Dockingstation.new}
	let (:station_w_one_bike) {Dockingstation.new([bike])}
	
	it "has no bikes to begin with" do
		expect(Dockingstation.new).not_to have_bikes
	end

	it "can be created with bikes already there" do
		my_station = Dockingstation.new([:bike, :bike])
		expect(my_station).to have_bikes
	end

	it "can release a bike" do
		station_w_one_bike.release_bike
		expect(station_w_one_bike).not_to have_bikes
	end

	it "cannot release a bike that is broken" do
		broken_bike_double = double :bike, broken?: true
		station = Dockingstation.new([broken_bike_double])

		station.release_bike

		expect(station).to have_bikes
	end




end