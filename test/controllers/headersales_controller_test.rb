require 'test_helper'

class HeadersalesControllerTest < ActionController::TestCase
  setup do
    @headersale = headersales(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:headersales)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create headersale" do
    assert_difference('Headersale.count') do
      post :create, headersale: { client_id: @headersale.client_id, fechaventa: @headersale.fechaventa, horaventa: @headersale.horaventa, iva: @headersale.iva, total: @headersale.total, totalefectivo: @headersale.totalefectivo, totaltarjeta: @headersale.totaltarjeta, user_id: @headersale.user_id }
    end

    assert_redirected_to headersale_path(assigns(:headersale))
  end

  test "should show headersale" do
    get :show, id: @headersale
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @headersale
    assert_response :success
  end

  test "should update headersale" do
    patch :update, id: @headersale, headersale: { client_id: @headersale.client_id, fechaventa: @headersale.fechaventa, horaventa: @headersale.horaventa, iva: @headersale.iva, total: @headersale.total, totalefectivo: @headersale.totalefectivo, totaltarjeta: @headersale.totaltarjeta, user_id: @headersale.user_id }
    assert_redirected_to headersale_path(assigns(:headersale))
  end

  test "should destroy headersale" do
    assert_difference('Headersale.count', -1) do
      delete :destroy, id: @headersale
    end

    assert_redirected_to headersales_path
  end
end
