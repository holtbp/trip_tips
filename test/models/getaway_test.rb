require 'test_helper'

class GetawayTest < ActiveSupport::TestCase
  setup do
    @getaway = getaways(:bill_and_ted)
  end

  test "visiting_cities" do
    assert_equal [cities(:chicago)], @getaway.visiting_cities
  end

  test "visiting_cities without sights" do
    getaway = Getaway.create!(name: 'Getaway with stops')
    city = City.create!(name: 'Fake City')
    Stop.create!(
      city_id: city.id,
      getaway_id: getaway.id
    )

    assert_equal [], getaway.visiting_cities
  end

  test "visiting_cities without stops" do
    assert_equal [], Getaway.new.visiting_cities
  end

  test "visiting_countries" do
    assert_equal [cities(:chicago).country], @getaway.visiting_countries
  end

  test "visiting_countries without cities" do
    assert_equal [], Getaway.new.visiting_countries
  end
end
