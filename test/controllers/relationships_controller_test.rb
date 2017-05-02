require 'test_helper'

class RelationshipsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @relationship = relationships(:one)
  end

  test "should get index" do
    get relationships_url, as: :json
    assert_response :success
  end

  test "should create relationship" do
    assert_difference('Relationship.count') do
      post relationships_url, params: { relationship: { friend_id: @relationship.friend_id, status: @relationship.status, user_id: @relationship.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show relationship" do
    get relationship_url(@relationship), as: :json
    assert_response :success
  end

  test "should update relationship" do
    patch relationship_url(@relationship), params: { relationship: { friend_id: @relationship.friend_id, status: @relationship.status, user_id: @relationship.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy relationship" do
    assert_difference('Relationship.count', -1) do
      delete relationship_url(@relationship), as: :json
    end

    assert_response 204
  end
end
