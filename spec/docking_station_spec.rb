require "docking_station"

describe DockingStation do
  it {is_expected.to respond_to :release_bike}

  it 'should dock bikes' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end

  it 'check for docked bikes' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end

  describe '#dock' do
    it 'raise an error if docking station is full' do
      subject.dock(Bike.new)
      expect{subject.dock(Bike.new)}.to raise_error 'Docking station is full'
    end
  end

  describe '#release_bike' do
    it "release working bikes" do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.release_bike).to be_working
  end

  it "raises an error" do
    expect{subject.release_bike}.to raise_error 'No bikes available'
  end
end
end
