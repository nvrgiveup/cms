require 'test_helper'

class CurrentsControllerTest < ActionController::TestCase
  setup do
    @current = currents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:currents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create current" do
    assert_difference('Current.count') do
      post :create, current: { current_discount: @current.current_discount, current_notes: @current.current_notes, current_processing: @current.current_processing, current_term_model: @current.current_term_model, current_terminal_lease: @current.current_terminal_lease, current_transfee: @current.current_transfee, merchant_id: @current.merchant_id }
    end

    assert_redirected_to current_path(assigns(:current))
  end

  test "should show current" do
    get :show, id: @current
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @current
    assert_response :success
  end

  test "should update current" do
    patch :update, id: @current, current: { current_discount: @current.current_discount, current_notes: @current.current_notes, current_processing: @current.current_processing, current_term_model: @current.current_term_model, current_terminal_lease: @current.current_terminal_lease, current_transfee: @current.current_transfee, merchant_id: @current.merchant_id }
    assert_redirected_to current_path(assigns(:current))
  end

  test "should destroy current" do
    assert_difference('Current.count', -1) do
      delete :destroy, id: @current
    end

    assert_redirected_to currents_path
  end
end
