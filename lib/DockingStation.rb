require_relative 'bike'

class DockingStation

attr_reader :bike

  def release_bike
    fail 'No bikes avaible' unless @bike
    @bike
  end

  def dock(bike)
    fail 'Station is full' if @bike
    @bike = bike
  end


end
