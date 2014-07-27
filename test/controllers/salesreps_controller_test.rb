require 'test_helper'

class SalesrepsControllerTest < ActionController::TestCase
  setup do
    @salesrep = salesreps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:salesreps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create salesrep" do
    assert_difference('Salesrep.count') do
      post :create, salesrep: { rep_email: @salesrep.rep_email, rep_fname: @salesrep.rep_fname, rep_lname: @salesrep.rep_lname, rep_phone: @salesrep.rep_phone }
    end

    assert_redirected_to salesrep_path(assigns(:salesrep))
  end

  test "should show salesrep" do
    get :show, id: @salesrep
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @salesrep
    assert_response :success
  end

  test "should update salesrep" do
    patch :update, id: @salesrep, salesrep: { rep_email: @salesrep.rep_email, rep_fname: @salesrep.rep_fname, rep_lname: @salesrep.rep_lname, rep_phone: @salesrep.rep_phone }
    assert_redirected_to salesrep_path(assigns(:salesrep))
  end

  test "should destroy salesrep" do
    assert_difference('Salesrep.count', -1) do
      delete :destroy, id: @salesrep
    end

    assert_redirected_to salesreps_path
  end
end
