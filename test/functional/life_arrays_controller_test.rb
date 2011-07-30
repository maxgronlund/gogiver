require 'test_helper'

class LifeArraysControllerTest < ActionController::TestCase
  setup do
    @life_array = life_arrays(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:life_arrays)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create life_array" do
    assert_difference('LifeArray.count') do
      post :create, life_array: @life_array.attributes
    end

    assert_redirected_to life_array_path(assigns(:life_array))
  end

  test "should show life_array" do
    get :show, id: @life_array.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @life_array.to_param
    assert_response :success
  end

  test "should update life_array" do
    put :update, id: @life_array.to_param, life_array: @life_array.attributes
    assert_redirected_to life_array_path(assigns(:life_array))
  end

  test "should destroy life_array" do
    assert_difference('LifeArray.count', -1) do
      delete :destroy, id: @life_array.to_param
    end

    assert_redirected_to life_arrays_path
  end
end
