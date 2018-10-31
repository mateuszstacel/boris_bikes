require 'DockingStation'

describe DockingStation do
   it { is_expected.to respond_to :release_bike }
   it 'it returns working bike' do
     station = DockingStation.new
     bike = station.release_bike
     expect(bike).to be_working
   end
 end
