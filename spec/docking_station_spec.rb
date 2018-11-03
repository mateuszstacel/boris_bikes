require 'DockingStation'

describe DockingStation do

  it { is_expected.to respond_to :release_bike}
  it { is_expected.to respond_to(:dock).with(1).argument }
  it { is_expected.to respond_to :bike }

 describe '#release_bike' do
  it 'release working bike' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.release_bike).to eq bike
  end
 end

 it 'throw error when no bikes avaible' do
    expect { subject.release_bike }.to raise_error 'No bikes avaible'
  end

  it 'throw error when station is full' do
    subject.dock(Bike.new)
    expect { subject.dock(Bike.new)}.to raise_error 'Station is full'
 end

describe '#dock' do
  it 'dock bike' do
    bike = Bike.new
  expect(subject.dock(bike)).to eq bike
  end
end

describe '#:bike' do
  it 'returns docked bike' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end
end

end
