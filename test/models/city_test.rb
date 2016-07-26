require 'test_helper'

class CityTest < ActiveSupport::TestCase
  setup do
    @city = cities(:frankfurt)
  end

  test "display_name" do
    expected = "#{@city.name}, #{@city.province.name}, #{@city.province.country.name}"
    assert_equal @city.display_name, expected
  end

  test "display_name without province" do
    city = City.new(name: "Gotham")
    assert_equal city.display_name, city.name
  end

  test "country" do
    assert_equal @city.country, @city.province.country
  end

  test "country without province" do
    city = City.new(name: "Gotham")
    assert_nil city.country
  end

  test "coordinates" do
    assert_equal @city.coordinates, [@city.latitude, @city.longitude]
  end

  test "nearby_sights does not include sights further than 60km" do
    sights = @city.nearby_sights
    assert sights.exclude?(sights(:liebig_museum))
    assert sights.include?(sights(:frankfurt_zoo))
  end
end
