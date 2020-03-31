require 'minitest/autorun'
require 'minitest/pride'
require './lib/renter'
require './lib/apartment'
require 'pry'

class RenterTest < Minitest::Test
  def test_it_exsists
    renter = Renter.new("Jessie")

    assert_instance_of Renter, renter
  end

  def test_it_has_name
    renter1 = Renter.new("Jessie")

    assert_equal "Jessie", renter1.name
  end
end
