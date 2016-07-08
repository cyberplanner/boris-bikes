require_relative 'bike'

class DockingStation
attr_reader :bikes
def initialize
@bikes = []
end
  def release_bike
    if @bikes.count >= 1
    @bikes.pop(1)
    else
      fail 'No bikes available'
    end
  end

  def dock_bike(bike)
    if @bikes.count < 20
      @bikes << bike
    else
      raise 'Docking Station is full'
    end
  end
end
