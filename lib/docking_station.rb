require_relative 'bike'

class DockingStation

attr_reader :bikes

def initialize
  @bikes = []
end

  def dock(bike)
    raise 'Docking station is full' if @bikes.length  >= 20
    @bikes << bike
  end

  def release_bike
    raise 'No bikes available' if @bikes.empty?
    @bikes.pop
  end

end
