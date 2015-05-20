require 'test_helper'

class GetawaysControllerTest < ActionController::TestCase
  setup do
    @getaway = getaways(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:getaways)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create getaway" do
    assert_difference('Getaway.count') do
      post :create, getaway: {  }
    end

    assert_redirected_to getaway_path(assigns(:getaway))
  end

  test "should show getaway" do
    get :show, id: @getaway
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @getaway
    assert_response :success
  end

  test "should update getaway" do
    patch :update, id: @getaway, getaway: {  }
    assert_redirected_to getaway_path(assigns(:getaway))
  end

  test "should destroy getaway" do
    assert_difference('Getaway.count', -1) do
      delete :destroy, id: @getaway
    end

    assert_redirected_to getaways_path
  end
end
