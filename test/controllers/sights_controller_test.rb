require 'test_helper'

class SightsControllerTest < ActionController::TestCase
  setup do
    @sight = sights(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sights)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sight" do
    assert_difference('Sight.count') do
      post :create, sight: {  }
    end

    assert_redirected_to sight_path(assigns(:sight))
  end

  test "should show sight" do
    get :show, id: @sight
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sight
    assert_response :success
  end

  test "should update sight" do
    patch :update, id: @sight, sight: {  }
    assert_redirected_to sight_path(assigns(:sight))
  end

  test "should destroy sight" do
    assert_difference('Sight.count', -1) do
      delete :destroy, id: @sight
    end

    assert_redirected_to sights_path
  end
end
