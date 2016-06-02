require 'test_helper'

class WidoksControllerTest < ActionController::TestCase
  setup do
    @widok = widoks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:widoks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create widok" do
    assert_difference('Widok.count') do
      post :create, widok: {  }
    end

    assert_redirected_to widok_path(assigns(:widok))
  end

  test "should show widok" do
    get :show, id: @widok
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @widok
    assert_response :success
  end

  test "should update widok" do
    patch :update, id: @widok, widok: {  }
    assert_redirected_to widok_path(assigns(:widok))
  end

  test "should destroy widok" do
    assert_difference('Widok.count', -1) do
      delete :destroy, id: @widok
    end

    assert_redirected_to widoks_path
  end
end
