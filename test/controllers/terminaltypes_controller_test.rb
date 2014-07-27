require 'test_helper'

class TerminaltypesControllerTest < ActionController::TestCase
  setup do
    @terminaltype = terminaltypes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:terminaltypes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create terminaltype" do
    assert_difference('Terminaltype.count') do
      post :create, terminaltype: { type_name: @terminaltype.type_name }
    end

    assert_redirected_to terminaltype_path(assigns(:terminaltype))
  end

  test "should show terminaltype" do
    get :show, id: @terminaltype
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @terminaltype
    assert_response :success
  end

  test "should update terminaltype" do
    patch :update, id: @terminaltype, terminaltype: { type_name: @terminaltype.type_name }
    assert_redirected_to terminaltype_path(assigns(:terminaltype))
  end

  test "should destroy terminaltype" do
    assert_difference('Terminaltype.count', -1) do
      delete :destroy, id: @terminaltype
    end

    assert_redirected_to terminaltypes_path
  end
end
