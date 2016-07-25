require 'test_helper'

class SightTest < ActiveSupport::TestCase
  setup do
    @sight = sights(:liebig_museum)
  end

  test "coords returns lat & long separated by a comma" do
    asset_equal @sight.coords, "#{@sight.latitude},#{@sight.longitude}"  
  end
end
