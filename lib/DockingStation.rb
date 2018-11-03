require_relative 'bike'

class DockingStation

attr_reader :bike

def initialize
  @bikes = []
end

  def release_bike
    fail 'No bikes avaible' if @bikes.empty?
    @bikes.pop
  end

  def dock(bike)
    fail 'Station is full' if @bikes.count >= 20
    @bikes << bike
  end


end
