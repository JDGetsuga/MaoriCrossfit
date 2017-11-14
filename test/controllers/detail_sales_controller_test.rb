require 'test_helper'

class DetailSalesControllerTest < ActionController::TestCase
  setup do
    @detail_sale = detail_sales(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:detail_sales)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create detail_sale" do
    assert_difference('DetailSale.count') do
      post :create, detail_sale: { cantidad: @detail_sale.cantidad, descripcion: @detail_sale.descripcion, descuento: @detail_sale.descuento, headersale_id: @detail_sale.headersale_id, item_id: @detail_sale.item_id, precio: @detail_sale.precio, subtotal: @detail_sale.subtotal, tipo: @detail_sale.tipo, user_id: @detail_sale.user_id }
    end

    assert_redirected_to detail_sale_path(assigns(:detail_sale))
  end

  test "should show detail_sale" do
    get :show, id: @detail_sale
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @detail_sale
    assert_response :success
  end

  test "should update detail_sale" do
    patch :update, id: @detail_sale, detail_sale: { cantidad: @detail_sale.cantidad, descripcion: @detail_sale.descripcion, descuento: @detail_sale.descuento, headersale_id: @detail_sale.headersale_id, item_id: @detail_sale.item_id, precio: @detail_sale.precio, subtotal: @detail_sale.subtotal, tipo: @detail_sale.tipo, user_id: @detail_sale.user_id }
    assert_redirected_to detail_sale_path(assigns(:detail_sale))
  end

  test "should destroy detail_sale" do
    assert_difference('DetailSale.count', -1) do
      delete :destroy, id: @detail_sale
    end

    assert_redirected_to detail_sales_path
  end
end
