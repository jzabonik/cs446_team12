require 'test_helper'

class TradeRequestsControllerTest < ActionController::TestCase
  setup do
    @trade_request = trade_requests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:trade_requests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create trade_request" do
    assert_difference('TradeRequest.count') do
      post :create, trade_request: {  }
    end

    assert_redirected_to trade_request_path(assigns(:trade_request))
  end

  test "should show trade_request" do
    get :show, id: @trade_request
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @trade_request
    assert_response :success
  end

  test "should update trade_request" do
    patch :update, id: @trade_request, trade_request: {  }
    assert_redirected_to trade_request_path(assigns(:trade_request))
  end

  test "should destroy trade_request" do
    assert_difference('TradeRequest.count', -1) do
      delete :destroy, id: @trade_request
    end

    assert_redirected_to trade_requests_path
  end
end
