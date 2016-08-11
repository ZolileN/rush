require 'test_helper'

class OrdersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @order = orders(:one)
  end

  test "should get index" do
    get orders_url
    assert_response :success
  end

  test "should get new" do
    get new_order_url
    assert_response :success
  end

  test "should create order" do
    assert_difference('Order.count') do
      post orders_url, params: { order: { accepted_at: @order.accepted_at, canceled_at: @order.canceled_at, completed_at: @order.completed_at, drop_off: @order.drop_off, drop_off_at: @order.drop_off_at, pick_up: @order.pick_up, pick_up_at: @order.pick_up_at, referances: @order.referances, referances: @order.referances, status: @order.status } }
    end

    assert_redirected_to order_url(Order.last)
  end

  test "should show order" do
    get order_url(@order)
    assert_response :success
  end

  test "should get edit" do
    get edit_order_url(@order)
    assert_response :success
  end

  test "should update order" do
    patch order_url(@order), params: { order: { accepted_at: @order.accepted_at, canceled_at: @order.canceled_at, completed_at: @order.completed_at, drop_off: @order.drop_off, drop_off_at: @order.drop_off_at, pick_up: @order.pick_up, pick_up_at: @order.pick_up_at, referances: @order.referances, referances: @order.referances, status: @order.status } }
    assert_redirected_to order_url(@order)
  end

  test "should destroy order" do
    assert_difference('Order.count', -1) do
      delete order_url(@order)
    end

    assert_redirected_to orders_url
  end
end
