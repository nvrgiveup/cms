require 'test_helper'

class PromotionsControllerTest < ActionController::TestCase
  setup do
    @promotion = promotions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:promotions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create promotion" do
    assert_difference('Promotion.count') do
      post :create, promotion: { promo_description: @promotion.promo_description, promo_enddate: @promotion.promo_enddate, promo_imagepath: @promotion.promo_imagepath, promo_startdate: @promotion.promo_startdate, promo_title: @promotion.promo_title }
    end

    assert_redirected_to promotion_path(assigns(:promotion))
  end

  test "should show promotion" do
    get :show, id: @promotion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @promotion
    assert_response :success
  end

  test "should update promotion" do
    patch :update, id: @promotion, promotion: { promo_description: @promotion.promo_description, promo_enddate: @promotion.promo_enddate, promo_imagepath: @promotion.promo_imagepath, promo_startdate: @promotion.promo_startdate, promo_title: @promotion.promo_title }
    assert_redirected_to promotion_path(assigns(:promotion))
  end

  test "should destroy promotion" do
    assert_difference('Promotion.count', -1) do
      delete :destroy, id: @promotion
    end

    assert_redirected_to promotions_path
  end
end
