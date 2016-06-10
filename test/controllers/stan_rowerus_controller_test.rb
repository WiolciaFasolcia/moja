require 'test_helper'

class StanRowerusControllerTest < ActionController::TestCase
  setup do
    @stan_roweru = stan_rowerus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stan_rowerus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create stan_roweru" do
    assert_difference('StanRoweru.count') do
      post :create, stan_roweru: { nazwa: @stan_roweru.nazwa }
    end

    assert_redirected_to stan_roweru_path(assigns(:stan_roweru))
  end

  test "should show stan_roweru" do
    get :show, id: @stan_roweru
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @stan_roweru
    assert_response :success
  end

  test "should update stan_roweru" do
    patch :update, id: @stan_roweru, stan_roweru: { nazwa: @stan_roweru.nazwa }
    assert_redirected_to stan_roweru_path(assigns(:stan_roweru))
  end

  test "should destroy stan_roweru" do
    assert_difference('StanRoweru.count', -1) do
      delete :destroy, id: @stan_roweru
    end

    assert_redirected_to stan_rowerus_path
  end
end
