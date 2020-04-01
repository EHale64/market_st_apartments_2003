require 'minitest/autorun'
require 'minitest/pride'
require './lib/renter'
require './lib/apartment'
require './lib/building'
require 'pry'

class BuildingTest < Minitest::Test
  def test_it_exists
    building = Building.new
  end

  def test_it_can_have_units
    building = Building.new
    building.units

    assert_equal [], building.units
  end

  def test_it_can_add_units
    building = Building.new
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    unit2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})
    building.add_unit(unit1)
    building.add_unit(unit2)

    assert_equal [unit1, unit2], building.units
  end

  def test_it_has_renters
    building = Building.new
    # unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    # unit2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})
    # building.add_unit(unit1)
    # building.add_unit(unit2)

    assert_equal [], building.renters
  end

  def test_it_can_add_renters
    building = Building.new
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    building.add_unit(unit1)
    renter1 = Renter.new("Aurora")
    unit1.add_renter(renter1)

    assert_equal ["Aurora"], building.renters
    unit2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})
    building.add_unit(unit2)
    renter2 = Renter.new("Tim")
    unit2.add_renter(renter2)
    assert_equal ["Aurora", "Tim"], building.renters
  end
end
