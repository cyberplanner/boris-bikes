require './lib/docking_station.rb'

describe DockingStation do
  it { is_expected.to respond_to(:release_bike) }
  it { is_expected.to respond_to(:dock_bike).with(1).argument }
  it { is_expected.to respond_to(:bike) }

describe '#release_bike' do
  it 'releases a bike' do
    bike = Bike.new
    subject.dock_bike(bike)
    expect(subject.release_bike).to eq bike
  end
end

  it 'releases working bikes' do
    bike = Bike.new
    subject.dock_bike(bike)
    subject.release_bike
    expect(bike).to be_working
  end

  it 'docks bike' do
    bike = Bike.new
    expect(subject.dock_bike(bike)).to eq bike
  end

  it 'returns docked bikes' do
    bike = Bike.new
    subject.dock_bike(bike)
    expect(subject.bike).to eq bike
  end
it { expect{subject.no_bikes}.to raise_error('no bikes available') }
end
