require 'test_helper'

class RozmiarsControllerTest < ActionController::TestCase
  setup do
    @rozmiar = rozmiars(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rozmiars)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rozmiar" do
    assert_difference('Rozmiar.count') do
      post :create, rozmiar: { rozmiar: @rozmiar.rozmiar }
    end

    assert_redirected_to rozmiar_path(assigns(:rozmiar))
  end

  test "should show rozmiar" do
    get :show, id: @rozmiar
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rozmiar
    assert_response :success
  end

  test "should update rozmiar" do
    patch :update, id: @rozmiar, rozmiar: { rozmiar: @rozmiar.rozmiar }
    assert_redirected_to rozmiar_path(assigns(:rozmiar))
  end

  test "should destroy rozmiar" do
    assert_difference('Rozmiar.count', -1) do
      delete :destroy, id: @rozmiar
    end

    assert_redirected_to rozmiars_path
  end
end
