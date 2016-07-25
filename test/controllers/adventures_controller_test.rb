require 'test_helper'

class AdventuresControllerTest < ActionController::TestCase
  setup do
    @getaway = getaways(:bill_and_ted)
    @stop = stops(:chicago_stop)
    @adventure = adventures(:art_adventure)
    @sight = sights(:art_institute)
  end

  test "should get index" do
    get :index, getaway_id: @getaway.id, stop_id: @stop.id
    assert_response :success
    assert_not_nil assigns(:adventures)
  end

  test "should get new" do
    get :new, getaway_id: @getaway.id, stop_id: @stop.id
    assert_response :success
  end

  test "should create adventure" do
    assert_difference('Adventure.count') do
      post :create, getaway_id: @getaway.id,
                    stop_id: @stop.id,
                    adventure: {
                      sight_id: @sight.id,
                      description: "Art stuff yo"
                    }
    end

    assert_redirected_to getaway_stop_adventure_path(@getaway, @stop, assigns(:adventure))
  end

  test "should show adventure" do
    get :show, getaway_id: @getaway.id, stop_id: @stop.id, id: @adventure
    assert_response :success
  end

  test "should get edit" do
    get :edit, getaway_id: @getaway.id, stop_id: @stop.id, id: @adventure
    assert_response :success
  end

  test "should update adventure" do
    patch :update, getaway_id: @getaway.id,
                   stop_id: @stop.id,
                   id: @adventure,
                   adventure: {
                     description: "Institution of art to tour"
                   }

    assert_redirected_to getaway_stop_adventure_path(@getaway, @stop, assigns(:adventure))
  end

  test "should destroy adventure" do
    assert_difference('Adventure.count', -1) do
      delete :destroy, getaway_id: @getaway.id, stop_id: @stop.id, id: @adventure
    end

    assert_redirected_to getaway_stop_adventures_path(@getaway, @stop)
  end
end
