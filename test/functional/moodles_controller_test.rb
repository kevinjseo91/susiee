require 'test_helper'

class MoodlesControllerTest < ActionController::TestCase
  setup do
    @moodle = moodles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:moodles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create moodle" do
    assert_difference('Moodle.count') do
      post :create, moodle: { content: @moodle.content, user_id: @moodle.user_id }
    end

    assert_redirected_to moodle_path(assigns(:moodle))
  end

  test "should show moodle" do
    get :show, id: @moodle
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @moodle
    assert_response :success
  end

  test "should update moodle" do
    put :update, id: @moodle, moodle: { content: @moodle.content, user_id: @moodle.user_id }
    assert_redirected_to moodle_path(assigns(:moodle))
  end

  test "should destroy moodle" do
    assert_difference('Moodle.count', -1) do
      delete :destroy, id: @moodle
    end

    assert_redirected_to moodles_path
  end
end
