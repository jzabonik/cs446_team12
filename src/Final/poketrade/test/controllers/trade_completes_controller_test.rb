require 'test_helper'

class TradeCompletesControllerTest < ActionController::TestCase
  setup do
    @trade_complete = trade_completes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:trade_completes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create trade_complete" do
    assert_difference('TradeComplete.count') do
      post :create, trade_complete: {  }
    end

    assert_redirected_to trade_complete_path(assigns(:trade_complete))
  end

  test "should show trade_complete" do
    get :show, id: @trade_complete
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @trade_complete
    assert_response :success
  end

  test "should update trade_complete" do
    patch :update, id: @trade_complete, trade_complete: {  }
    assert_redirected_to trade_complete_path(assigns(:trade_complete))
  end

  test "should destroy trade_complete" do
    assert_difference('TradeComplete.count', -1) do
      delete :destroy, id: @trade_complete
    end

    assert_redirected_to trade_completes_path
  end
end
