require 'test_helper'

class PlaceUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @place_user = place_users(:one)
  end

  test "should get index" do
    get place_users_url
    assert_response :success
  end

  test "should get new" do
    get new_place_user_url
    assert_response :success
  end

  test "should create place_user" do
    assert_difference('PlaceUser.count') do
      post place_users_url, params: { place_user: { place_id: @place_user.place_id, user_id: @place_user.user_id } }
    end

    assert_redirected_to place_user_url(PlaceUser.last)
  end

  test "should show place_user" do
    get place_user_url(@place_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_place_user_url(@place_user)
    assert_response :success
  end

  test "should update place_user" do
    patch place_user_url(@place_user), params: { place_user: { place_id: @place_user.place_id, user_id: @place_user.user_id } }
    assert_redirected_to place_user_url(@place_user)
  end

  test "should destroy place_user" do
    assert_difference('PlaceUser.count', -1) do
      delete place_user_url(@place_user)
    end

    assert_redirected_to place_users_url
  end
end
