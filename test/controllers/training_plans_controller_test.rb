require 'test_helper'

class TrainingPlansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @training_plan = training_plans(:one)
  end

  test "should get index" do
    get training_plans_url, as: :json
    assert_response :success
  end

  test "should create training_plan" do
    assert_difference('TrainingPlan.count') do
      post training_plans_url, params: { training_plan: { name: @training_plan.name, shoot_type: @training_plan.shoot_type } }, as: :json
    end

    assert_response 201
  end

  test "should show training_plan" do
    get training_plan_url(@training_plan), as: :json
    assert_response :success
  end

  test "should update training_plan" do
    patch training_plan_url(@training_plan), params: { training_plan: { name: @training_plan.name, shoot_type: @training_plan.shoot_type } }, as: :json
    assert_response 200
  end

  test "should destroy training_plan" do
    assert_difference('TrainingPlan.count', -1) do
      delete training_plan_url(@training_plan), as: :json
    end

    assert_response 204
  end
end
