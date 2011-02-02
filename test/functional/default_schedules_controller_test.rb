require 'test_helper'

class DefaultSchedulesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:default_schedules)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create default_schedule" do
    assert_difference('DefaultSchedule.count') do
      post :create, :default_schedule => { }
    end

    assert_redirected_to default_schedule_path(assigns(:default_schedule))
  end

  test "should show default_schedule" do
    get :show, :id => default_schedules(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => default_schedules(:one).to_param
    assert_response :success
  end

  test "should update default_schedule" do
    put :update, :id => default_schedules(:one).to_param, :default_schedule => { }
    assert_redirected_to default_schedule_path(assigns(:default_schedule))
  end

  test "should destroy default_schedule" do
    assert_difference('DefaultSchedule.count', -1) do
      delete :destroy, :id => default_schedules(:one).to_param
    end

    assert_redirected_to default_schedules_path
  end
end
