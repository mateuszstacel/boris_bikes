require 'DockingStation'

describe DockingStation do
   it { is_expected.to respond_to :release_bike }

   it 'it returns working bike' do
     station = DockingStation.new
     bike = station.release_bike
     expect(bike).to be_working
   end

     context 'allows user to dock bike at station' do
       #expect(subject).to respond_to :dock
      it { is_expected.to respond_to(:dock).with(1).argument }
     end

     it 'docking a bike stores adds a bikes at the station' do
     bike = Bike.new
     expect(subject.dock(bike)).to eq bike
   end

      it 'raises' do
        expect { subject.release_bike }.to raise_error("nameerror")
      end

  end
