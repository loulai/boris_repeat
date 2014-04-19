class Dockingstation 

	def initialize(something=[])
		@bikes = something
	end

	def has_bikes?
		@bikes.any?

		# if @bikes is full, when you ask 'is it nil?' answer: FALSE. so need to negate.
	end

	def release_bike
		@bikes.pop unless @bikes.last.broken? == true
	end

end