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

  test "duration" do
    assert_equal 24.0, @stop.duration
  end

  test "duration_string with nil arrival and departure" do
    assert_equal '?', Stop.new.duration_string
  end

  test "duration_string with nil arrival" do
    stop = Stop.new(departure: '2016-07-25 11:00:00')
    assert_equal "? - Jul 25, 2016", stop.duration_string
  end

  test "duration_string with nil departure" do
    stop = Stop.new(arrival: '2016-07-25 11:00:00')
    assert_equal "Jul 25, 2016 - ?", stop.duration_string
  end

  test "duration_string with same month" do
    stop = Stop.new(arrival: '2016-07-25 11:00:00', departure: '2016-07-29 11:00:00')
    assert_equal "Jul 25-29, 2016", stop.duration_string
  end

  test "duration_string with different months" do
    stop = Stop.new(arrival: '2016-07-25 11:00:00', departure: '2016-08-01 11:00:00')
    assert_equal "Jul 25 - Aug 1, 2016", stop.duration_string
  end

  test "duration_string with different years" do
    stop = Stop.new(arrival: '2016-12-25 11:00:00', departure: '2017-01-01 11:00:00')
    assert_equal "Dec 25, 2016 - Jan 1, 2017", stop.duration_string
  end
end
