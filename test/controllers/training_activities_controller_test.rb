require 'test_helper'

class TrainingActivitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @training_activity = training_activities(:one)
  end

  test "should get index" do
    get training_activities_url, as: :json
    assert_response :success
  end

  test "should create training_activity" do
    assert_difference('TrainingActivity.count') do
      post training_activities_url, params: { training_activity: { expected_time: @training_activity.expected_time, shoot_count: @training_activity.shoot_count, training_plan_id: @training_activity.training_plan_id, with_time: @training_activity.with_time } }, as: :json
    end

    assert_response 201
  end

  test "should show training_activity" do
    get training_activity_url(@training_activity), as: :json
    assert_response :success
  end

  test "should update training_activity" do
    patch training_activity_url(@training_activity), params: { training_activity: { expected_time: @training_activity.expected_time, shoot_count: @training_activity.shoot_count, training_plan_id: @training_activity.training_plan_id, with_time: @training_activity.with_time } }, as: :json
    assert_response 200
  end

  test "should destroy training_activity" do
    assert_difference('TrainingActivity.count', -1) do
      delete training_activity_url(@training_activity), as: :json
    end

    assert_response 204
  end
end
