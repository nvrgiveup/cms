require 'test_helper'

class MerchantsControllerTest < ActionController::TestCase
  setup do
    @merchant = merchants(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:merchants)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create merchant" do
    assert_difference('Merchant.count') do
      post :create, merchant: { merch_address1: @merchant.merch_address1, merch_address2: @merchant.merch_address2, merch_cell: @merchant.merch_cell, merch_city: @merchant.merch_city, merch_dba: @merchant.merch_dba, merch_email: @merchant.merch_email, merch_fax: @merchant.merch_fax, merch_fname: @merchant.merch_fname, merch_lname: @merchant.merch_lname, merch_notes: @merchant.merch_notes, merch_phone: @merchant.merch_phone, merch_state: @merchant.merch_state, merch_zip: @merchant.merch_zip, merchant_id: @merchant.merchant_id }
    end

    assert_redirected_to merchant_path(assigns(:merchant))
  end

  test "should show merchant" do
    get :show, id: @merchant
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @merchant
    assert_response :success
  end

  test "should update merchant" do
    patch :update, id: @merchant, merchant: { merch_address1: @merchant.merch_address1, merch_address2: @merchant.merch_address2, merch_cell: @merchant.merch_cell, merch_city: @merchant.merch_city, merch_dba: @merchant.merch_dba, merch_email: @merchant.merch_email, merch_fax: @merchant.merch_fax, merch_fname: @merchant.merch_fname, merch_lname: @merchant.merch_lname, merch_notes: @merchant.merch_notes, merch_phone: @merchant.merch_phone, merch_state: @merchant.merch_state, merch_zip: @merchant.merch_zip, merchant_id: @merchant.merchant_id }
    assert_redirected_to merchant_path(assigns(:merchant))
  end

  test "should destroy merchant" do
    assert_difference('Merchant.count', -1) do
      delete :destroy, id: @merchant
    end

    assert_redirected_to merchants_path
  end
end
