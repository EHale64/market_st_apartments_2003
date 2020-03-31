require 'minitest/autorun'
require 'minitest/pride'
require './lib/renter'
require './lib/apartment'
require './lib/building'
require 'pry'

class BuildingTest < Minitest::Test
  def test_it_exsists
    building = Building.new
  end

  def test_it_has_units
    building = Building.new
    building.units

    assert_equal [], building.units
  end
end
