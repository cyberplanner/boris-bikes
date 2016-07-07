require_relative 'bike'

class DockingStation
DEFAULT_CAPACITY = 20
attr_reader :bikes

def initialize
  @bikes = []
end

  def dock(bike)
    raise 'Docking station is full' if full?
    @bikes << bike
  end

  def release_bike
    raise 'No bikes available' if is_empty?
    @bikes.pop
  end

private

  def full?
    true if @bikes.length >= DEFAULT_CAPACITY
  end

  def is_empty?
    true if @bikes.empty?
  end

end
