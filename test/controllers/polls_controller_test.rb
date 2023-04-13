require "test_helper"

class PollsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get polls_index_url
    assert_response :success
  end

  test "should get show" do
    get polls_show_url
    assert_response :success
  end

  test "should get create" do
    get polls_create_url
    assert_response :success
  end

  test "should get update" do
    get polls_update_url
    assert_response :success
  end

  test "should get destroy" do
    get polls_destroy_url
    assert_response :success
  end
end
