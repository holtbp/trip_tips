require 'test_helper'

class GetawayTest < ActiveSupport::TestCase
  setup do
    @getaway = getaways(:bill_and_ted)
  end

  test "duration" do
    assert_equal 10.0, @getaway.duration
  end

  test "duration with blank arrival" do
    assert_equal '?', Getaway.new.duration
  end
end
