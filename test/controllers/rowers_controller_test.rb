require 'test_helper'

class RowersControllerTest < ActionController::TestCase
  setup do
    @rower = rowers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rowers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rower" do
    assert_difference('Rower.count') do
      post :create, rower: { rodzaj: @rower.rodzaj, stan: @rower.stan, wielkosc_ramy: @rower.wielkosc_ramy }
    end

    assert_redirected_to rower_path(assigns(:rower))
  end

  test "should show rower" do
    get :show, id: @rower
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rower
    assert_response :success
  end

  test "should update rower" do
    patch :update, id: @rower, rower: { rodzaj: @rower.rodzaj, stan: @rower.stan, wielkosc_ramy: @rower.wielkosc_ramy }
    assert_redirected_to rower_path(assigns(:rower))
  end

  test "should destroy rower" do
    assert_difference('Rower.count', -1) do
      delete :destroy, id: @rower
    end

    assert_redirected_to rowers_path
  end
end
