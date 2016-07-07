require "docking_station"

describe DockingStation do
  it {is_expected.to respond_to :release_bike}

  it 'check for docked bikes' do
    bikes = Bike.new
    subject.dock(bikes)
    expect(subject.bikes.last).to eq bikes
  end

  describe '#dock' do
    it {should respond_to(:dock).with(1).argument}

    it 'raise an error if docking station is full' do
      20.times {subject.dock(Bike.new)}
      expect{subject.dock(Bike.new)}.to raise_error 'Docking station is full'
    end
  end

  describe '#release_bike' do
    it "release working bikes" do
      subject.dock(Bike.new)
      expect(subject.release_bike).to be_working
  end

  it "raises an error" do
    expect{subject.release_bike}.to raise_error 'No bikes available'
  end
end
end
