require 'test_helper'

class SaleterminalsControllerTest < ActionController::TestCase
  setup do
    @saleterminal = saleterminals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:saleterminals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create saleterminal" do
    assert_difference('Saleterminal.count') do
      post :create, saleterminal: { color: @saleterminal.color, features_note: @saleterminal.features_note, invoice_price: @saleterminal.invoice_price, manufacturer_id: @saleterminal.manufacturer_id, model: @saleterminal.model, purchase_date: @saleterminal.purchase_date, sale_price: @saleterminal.sale_price, stock_number: @saleterminal.stock_number, terminaltype_id: @saleterminal.terminaltype_id, year: @saleterminal.year }
    end

    assert_redirected_to saleterminal_path(assigns(:saleterminal))
  end

  test "should show saleterminal" do
    get :show, id: @saleterminal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @saleterminal
    assert_response :success
  end

  test "should update saleterminal" do
    patch :update, id: @saleterminal, saleterminal: { color: @saleterminal.color, features_note: @saleterminal.features_note, invoice_price: @saleterminal.invoice_price, manufacturer_id: @saleterminal.manufacturer_id, model: @saleterminal.model, purchase_date: @saleterminal.purchase_date, sale_price: @saleterminal.sale_price, stock_number: @saleterminal.stock_number, terminaltype_id: @saleterminal.terminaltype_id, year: @saleterminal.year }
    assert_redirected_to saleterminal_path(assigns(:saleterminal))
  end

  test "should destroy saleterminal" do
    assert_difference('Saleterminal.count', -1) do
      delete :destroy, id: @saleterminal
    end

    assert_redirected_to saleterminals_path
  end
end
