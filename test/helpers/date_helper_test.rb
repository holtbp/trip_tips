require 'test_helper'

class ExampleModel
  include DateHelper

  attr_accessor :arrival, :departure

  def initialize(options = {})
    arrival = options[:arrival]
    departure = options[:departure]

    @arrival = arrival.blank? ? nil : DateTime.parse(arrival).in_time_zone
    @departure = departure.blank? ? nil : DateTime.parse(departure).in_time_zone
  end
end

class DateHelperTest < ActiveSupport::TestCase
  test "duration" do
    example = ExampleModel.new(
      arrival: '2016-07-25 11:00:00',
      departure: '2016-07-26 11:00:00'
    )
    assert_equal 24.0, example.duration
  end

  test "duration_string with nil arrival and departure" do
    assert_equal '?', ExampleModel.new.duration_string
  end

  test "duration_string with nil arrival" do
    stop = ExampleModel.new(departure: '2016-07-25 11:00:00')
    assert_equal "? - Jul 25, 2016", stop.duration_string
  end

  test "duration_string with nil departure" do
    stop = ExampleModel.new(arrival: '2016-07-25 11:00:00')
    assert_equal "Jul 25, 2016 - ?", stop.duration_string
  end

  test "duration_string with same month" do
    stop = ExampleModel.new(arrival: '2016-07-25 11:00:00', departure: '2016-07-29 11:00:00')
    assert_equal "Jul 25-29, 2016", stop.duration_string
  end

  test "duration_string with different months" do
    stop = ExampleModel.new(arrival: '2016-07-25 11:00:00', departure: '2016-08-01 11:00:00')
    assert_equal "Jul 25 - Aug 1, 2016", stop.duration_string
  end

  test "duration_string with different years" do
    stop = ExampleModel.new(arrival: '2016-12-25 11:00:00', departure: '2017-01-01 11:00:00')
    assert_equal "Dec 25, 2016 - Jan 1, 2017", stop.duration_string
  end
end
