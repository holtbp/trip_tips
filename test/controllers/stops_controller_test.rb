require 'test_helper'

class StopsControllerTest < ActionController::TestCase
  setup do
    @getaway = getaways(:bill_and_ted)
    @stop = stops(:chicago_stop)
  end

  test "should get index" do
    get :index, getaway_id: @getaway.id
    assert_response :success
    assert_not_nil assigns(:stops)
  end

  test "should get new" do
    get :new, getaway_id: @getaway.id
    assert_response :success
  end

  test "should create stop" do
    assert_difference('Stop.count') do
      post :create, getaway_id: @getaway.id, stop: {
        city_id: City.first.id,
        arrival: DateTime.now + 2.days,
        departure: DateTime.now + 1.week
      }
    end

    assert_redirected_to getaway_stop_path(@getaway, assigns(:stop))
  end

  test "should show stop" do
    get :show, getaway_id: @getaway.id, id: @stop
    assert_response :success
  end

  test "should get edit" do
    get :edit, getaway_id: @getaway.id, id: @stop
    assert_response :success
  end

  test "should update stop" do
    patch :update, getaway_id: @getaway.id, id: @stop, stop: {
        city_id: City.last.id,
        arrival: DateTime.now + 3.days,
        departure: DateTime.now + 5.days
    }
    assert_redirected_to getaway_stop_path(@getaway, assigns(:stop))
  end

  test "should destroy stop" do
    assert_difference('Stop.count', -1) do
      delete :destroy, getaway_id: @getaway.id, id: @stop
    end

    assert_redirected_to getaway_stops_path(@getaway)
  end
end
