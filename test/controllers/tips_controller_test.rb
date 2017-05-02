require 'test_helper'

class TipsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tip = tips(:one)
  end

  test "should get index" do
    get tips_url, as: :json
    assert_response :success
  end

  test "should create tip" do
    assert_difference('Tip.count') do
      post tips_url, params: { tip: { description: @tip.description, name: @tip.name, training_plan_id: @tip.training_plan_id } }, as: :json
    end

    assert_response 201
  end

  test "should show tip" do
    get tip_url(@tip), as: :json
    assert_response :success
  end

  test "should update tip" do
    patch tip_url(@tip), params: { tip: { description: @tip.description, name: @tip.name, training_plan_id: @tip.training_plan_id } }, as: :json
    assert_response 200
  end

  test "should destroy tip" do
    assert_difference('Tip.count', -1) do
      delete tip_url(@tip), as: :json
    end

    assert_response 204
  end
end
