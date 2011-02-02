require 'test_helper'

class CheckInsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:check_ins)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create check_in" do
    assert_difference('CheckIn.count') do
      post :create, :check_in => { }
    end

    assert_redirected_to check_in_path(assigns(:check_in))
  end

  test "should show check_in" do
    get :show, :id => check_ins(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => check_ins(:one).to_param
    assert_response :success
  end

  test "should update check_in" do
    put :update, :id => check_ins(:one).to_param, :check_in => { }
    assert_redirected_to check_in_path(assigns(:check_in))
  end

  test "should destroy check_in" do
    assert_difference('CheckIn.count', -1) do
      delete :destroy, :id => check_ins(:one).to_param
    end

    assert_redirected_to check_ins_path
  end
end
