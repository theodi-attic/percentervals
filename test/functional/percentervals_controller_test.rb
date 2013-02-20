require 'test_helper'

class PercentervalsControllerTest < ActionController::TestCase
  setup do
    @percenterval = percentervals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:percentervals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create percenterval" do
    assert_difference('Percenterval.count') do
      post :create, percenterval: { date: @percenterval.date, hours: @percenterval.hours, name: @percenterval.name }
    end

    assert_redirected_to percenterval_path(assigns(:percenterval))
  end

  test "should show percenterval" do
    get :show, id: @percenterval
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @percenterval
    assert_response :success
  end

  test "should update percenterval" do
    put :update, id: @percenterval, percenterval: { date: @percenterval.date, hours: @percenterval.hours, name: @percenterval.name }
    assert_redirected_to percenterval_path(assigns(:percenterval))
  end

  test "should destroy percenterval" do
    assert_difference('Percenterval.count', -1) do
      delete :destroy, id: @percenterval
    end

    assert_redirected_to percentervals_path
  end
end
