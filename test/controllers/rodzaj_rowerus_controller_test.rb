require 'test_helper'

class RodzajRowerusControllerTest < ActionController::TestCase
  setup do
    @rodzaj_roweru = rodzaj_rowerus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rodzaj_rowerus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rodzaj_roweru" do
    assert_difference('RodzajRoweru.count') do
      post :create, rodzaj_roweru: { rodzaj: @rodzaj_roweru.rodzaj }
    end

    assert_redirected_to rodzaj_roweru_path(assigns(:rodzaj_roweru))
  end

  test "should show rodzaj_roweru" do
    get :show, id: @rodzaj_roweru
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rodzaj_roweru
    assert_response :success
  end

  test "should update rodzaj_roweru" do
    patch :update, id: @rodzaj_roweru, rodzaj_roweru: { rodzaj: @rodzaj_roweru.rodzaj }
    assert_redirected_to rodzaj_roweru_path(assigns(:rodzaj_roweru))
  end

  test "should destroy rodzaj_roweru" do
    assert_difference('RodzajRoweru.count', -1) do
      delete :destroy, id: @rodzaj_roweru
    end

    assert_redirected_to rodzaj_rowerus_path
  end
end
