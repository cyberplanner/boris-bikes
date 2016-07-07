require_relative 'bike'

class DockingStation
attr_reader :bikes
def initialize
@bikes = []
end
  def release_bike
    fail 'No bikes available' unless @bikes != []
    @bikes
  end

  def dock_bike(bike)
    if @bikes.count < 21
      @bikes << bike
    else
      raise 'Docking Station is full'
    end
  end
end
