class Person

	def initialize(bike = nil)
		@bike = bike
	end

	def has_bike?
		!@bike.nil?
	end

	def fall_down
		@bike.break!
	end 

	def rent_bike_from(thingy)
		@bike = thingy.release_bike
	end

	def return_bike_to(some_Station)
			@bike = some_Station.dock(:bike)
	
	end

end

# class Station

# 	def dock(arg)
# 	end

# end

