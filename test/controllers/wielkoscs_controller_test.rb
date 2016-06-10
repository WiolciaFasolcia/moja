require 'test_helper'

class WielkoscsControllerTest < ActionController::TestCase
  setup do
    @wielkosc = wielkoscs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wielkoscs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wielkosc" do
    assert_difference('Wielkosc.count') do
      post :create, wielkosc: { rozmiar: @wielkosc.rozmiar }
    end

    assert_redirected_to wielkosc_path(assigns(:wielkosc))
  end

  test "should show wielkosc" do
    get :show, id: @wielkosc
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @wielkosc
    assert_response :success
  end

  test "should update wielkosc" do
    patch :update, id: @wielkosc, wielkosc: { rozmiar: @wielkosc.rozmiar }
    assert_redirected_to wielkosc_path(assigns(:wielkosc))
  end

  test "should destroy wielkosc" do
    assert_difference('Wielkosc.count', -1) do
      delete :destroy, id: @wielkosc
    end

    assert_redirected_to wielkoscs_path
  end
end
