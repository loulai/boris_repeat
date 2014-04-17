require "second_bike"

describe "borisbike" do 

	let(:bike) {Bike.new}
	let(:broken_bike) {Bike.new.break!}

	it "is not broken when created" do 
		expect(bike).not_to be_broken
	end

	it 'can break' do 
		expect(broken_bike).to be_broken
	end

	it 'can be fixed' do
		broken_bike.fix!
		expect(bike).not_to be_broken
	end


end 