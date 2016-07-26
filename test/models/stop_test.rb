require 'test_helper'

class StopTest < ActiveSupport::TestCase

  setup do
    @stop = stops(:chicago_stop)
  end

  test "name" do
    assert_equal @stop.city.name, @stop.name
  end

  test "country" do
    assert_equal @stop.city.country, @stop.country
  end

  test "country without city relation" do
    assert_nil Stop.new.country
  end

  test "sights" do
    adventure = adventures(:art_adventure)
    assert_equal [adventure.sight], @stop.sights
  end

  test "sights without adventures" do
    assert_equal [], Stop.new.sights
  end
end
