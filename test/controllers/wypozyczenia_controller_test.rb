require 'test_helper'

class WypozyczeniaControllerTest < ActionController::TestCase
  setup do
    @wypozyczenium = wypozyczenia(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wypozyczenia)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wypozyczenium" do
    assert_difference('Wypozyczenium.count') do
      post :create, wypozyczenium: { date_begin: @wypozyczenium.date_begin, date_end: @wypozyczenium.date_end, status: @wypozyczenium.status }
    end

    assert_redirected_to wypozyczenium_path(assigns(:wypozyczenium))
  end

  test "should show wypozyczenium" do
    get :show, id: @wypozyczenium
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @wypozyczenium
    assert_response :success
  end

  test "should update wypozyczenium" do
    patch :update, id: @wypozyczenium, wypozyczenium: { date_begin: @wypozyczenium.date_begin, date_end: @wypozyczenium.date_end, status: @wypozyczenium.status }
    assert_redirected_to wypozyczenium_path(assigns(:wypozyczenium))
  end

  test "should destroy wypozyczenium" do
    assert_difference('Wypozyczenium.count', -1) do
      delete :destroy, id: @wypozyczenium
    end

    assert_redirected_to wypozyczenia_path
  end
end
