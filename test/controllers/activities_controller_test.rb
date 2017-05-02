require 'test_helper'

class ActivitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @activity = activities(:one)
  end

  test "should get index" do
    get activities_url, as: :json
    assert_response :success
  end

  test "should create activity" do
    assert_difference('Activity.count') do
      post activities_url, params: { activity: { asserted: @activity.asserted, failed: @activity.failed, finished_at: @activity.finished_at, startted_at: @activity.startted_at, training_activity_id: @activity.training_activity_id, user_id: @activity.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show activity" do
    get activity_url(@activity), as: :json
    assert_response :success
  end

  test "should update activity" do
    patch activity_url(@activity), params: { activity: { asserted: @activity.asserted, failed: @activity.failed, finished_at: @activity.finished_at, startted_at: @activity.startted_at, training_activity_id: @activity.training_activity_id, user_id: @activity.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy activity" do
    assert_difference('Activity.count', -1) do
      delete activity_url(@activity), as: :json
    end

    assert_response 204
  end
end
