require 'DockingStation'

describe DockingStation do
   it { is_expected.to respond_to :release_bike }

   it 'it returns working bike' do
     station = DockingStation.new
     bike = station.release_bike
     expect(bike).to be_working
   end

     it 'allows user to dock bike at station' do
       #expect(subject).to respond_to :dock
        is_expected.to respond_to(:dock).with(1).argument
     end

     it 'docking a bike stores adds a bikes at the station' do
     bike = Bike.new
     expect(subject.dock(bike)).to eq bike
   end


  end
