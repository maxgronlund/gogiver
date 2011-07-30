require 'test_helper'

class KeyValuesControllerTest < ActionController::TestCase
  setup do
    @key_value = key_values(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:key_values)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create key_value" do
    assert_difference('KeyValue.count') do
      post :create, key_value: @key_value.attributes
    end

    assert_redirected_to key_value_path(assigns(:key_value))
  end

  test "should show key_value" do
    get :show, id: @key_value.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @key_value.to_param
    assert_response :success
  end

  test "should update key_value" do
    put :update, id: @key_value.to_param, key_value: @key_value.attributes
    assert_redirected_to key_value_path(assigns(:key_value))
  end

  test "should destroy key_value" do
    assert_difference('KeyValue.count', -1) do
      delete :destroy, id: @key_value.to_param
    end

    assert_redirected_to key_values_path
  end
end
