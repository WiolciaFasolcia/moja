require 'test_helper'

class RozmiarRamiesControllerTest < ActionController::TestCase
  setup do
    @rozmiar_ramy = rozmiar_ramies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rozmiar_ramies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rozmiar_ramy" do
    assert_difference('RozmiarRamy.count') do
      post :create, rozmiar_ramy: { rozmiar: @rozmiar_ramy.rozmiar }
    end

    assert_redirected_to rozmiar_ramy_path(assigns(:rozmiar_ramy))
  end

  test "should show rozmiar_ramy" do
    get :show, id: @rozmiar_ramy
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rozmiar_ramy
    assert_response :success
  end

  test "should update rozmiar_ramy" do
    patch :update, id: @rozmiar_ramy, rozmiar_ramy: { rozmiar: @rozmiar_ramy.rozmiar }
    assert_redirected_to rozmiar_ramy_path(assigns(:rozmiar_ramy))
  end

  test "should destroy rozmiar_ramy" do
    assert_difference('RozmiarRamy.count', -1) do
      delete :destroy, id: @rozmiar_ramy
    end

    assert_redirected_to rozmiar_ramies_path
  end
end
