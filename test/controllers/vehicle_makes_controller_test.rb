require 'test_helper'

class VehicleMakesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vehicle_make = vehicle_makes(:one)
  end

  test "should get index" do
    get vehicle_makes_url
    assert_response :success
  end

  test "should get new" do
    get new_vehicle_make_url
    assert_response :success
  end

  test "should create vehicle_make" do
    assert_difference('VehicleMake.count') do
      post vehicle_makes_url, params: { vehicle_make: { name: @vehicle_make.name, note: @vehicle_make.note, vehicle_type_id: @vehicle_make.vehicle_type_id } }
    end

    assert_redirected_to vehicle_make_url(VehicleMake.last)
  end

  test "should show vehicle_make" do
    get vehicle_make_url(@vehicle_make)
    assert_response :success
  end

  test "should get edit" do
    get edit_vehicle_make_url(@vehicle_make)
    assert_response :success
  end

  test "should update vehicle_make" do
    patch vehicle_make_url(@vehicle_make), params: { vehicle_make: { name: @vehicle_make.name, note: @vehicle_make.note, vehicle_type_id: @vehicle_make.vehicle_type_id } }
    assert_redirected_to vehicle_make_url(@vehicle_make)
  end

  test "should destroy vehicle_make" do
    assert_difference('VehicleMake.count', -1) do
      delete vehicle_make_url(@vehicle_make)
    end

    assert_redirected_to vehicle_makes_url
  end
end
