class Building
  attr_reader :units, :renters
  def initialize
    @units = []
    @renters = []
  end

  def add_unit(unit)
    @units << unit
  end

  def renters
    #if unit.renter != nil
    #  @renters << renter
    @renters
    #end
  end
end
