require 'test_helper'

class ActivityRegistersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @activity_register = activity_registers(:one)
  end

  test "should get index" do
    get activity_registers_url
    assert_response :success
  end

  test "should get new" do
    get new_activity_register_url
    assert_response :success
  end

  test "should create activity_register" do
    assert_difference('ActivityRegister.count') do
      post activity_registers_url, params: { activity_register: { activity_id: @activity_register.activity_id, comments: @activity_register.comments, picture1: @activity_register.picture1, picture2: @activity_register.picture2, picture3: @activity_register.picture3, user_id: @activity_register.user_id, value: @activity_register.value } }
    end

    assert_redirected_to activity_register_url(ActivityRegister.last)
  end

  test "should show activity_register" do
    get activity_register_url(@activity_register)
    assert_response :success
  end

  test "should get edit" do
    get edit_activity_register_url(@activity_register)
    assert_response :success
  end

  test "should update activity_register" do
    patch activity_register_url(@activity_register), params: { activity_register: { activity_id: @activity_register.activity_id, comments: @activity_register.comments, picture1: @activity_register.picture1, picture2: @activity_register.picture2, picture3: @activity_register.picture3, user_id: @activity_register.user_id, value: @activity_register.value } }
    assert_redirected_to activity_register_url(@activity_register)
  end

  test "should destroy activity_register" do
    assert_difference('ActivityRegister.count', -1) do
      delete activity_register_url(@activity_register)
    end

    assert_redirected_to activity_registers_url
  end
end
