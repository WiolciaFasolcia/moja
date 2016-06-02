require 'test_helper'

class KlientsControllerTest < ActionController::TestCase
  setup do
    @klient = klients(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:klients)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create klient" do
    assert_difference('Klient.count') do
      post :create, klient: { name: @klient.name, nr_dowodu: @klient.nr_dowodu, pesel: @klient.pesel, surname: @klient.surname }
    end

    assert_redirected_to klient_path(assigns(:klient))
  end

  test "should show klient" do
    get :show, id: @klient
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @klient
    assert_response :success
  end

  test "should update klient" do
    patch :update, id: @klient, klient: { name: @klient.name, nr_dowodu: @klient.nr_dowodu, pesel: @klient.pesel, surname: @klient.surname }
    assert_redirected_to klient_path(assigns(:klient))
  end

  test "should destroy klient" do
    assert_difference('Klient.count', -1) do
      delete :destroy, id: @klient
    end

    assert_redirected_to klients_path
  end
end
