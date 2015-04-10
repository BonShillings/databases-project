require 'test_helper'

class RatersControllerTest < ActionController::TestCase
  setup do
    @rater = raters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:raters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rater" do
    assert_difference('Rater.count') do
      post :create, rater: { email: @rater.email, join_date: @rater.join_date, name: @rater.name, reputation: @rater.reputation, rtype: @rater.rtype }
    end

    assert_redirected_to rater_path(assigns(:rater))
  end

  test "should show rater" do
    get :show, id: @rater
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rater
    assert_response :success
  end

  test "should update rater" do
    patch :update, id: @rater, rater: { email: @rater.email, join_date: @rater.join_date, name: @rater.name, reputation: @rater.reputation, rtype: @rater.rtype }
    assert_redirected_to rater_path(assigns(:rater))
  end

  test "should destroy rater" do
    assert_difference('Rater.count', -1) do
      delete :destroy, id: @rater
    end

    assert_redirected_to raters_path
  end
end
