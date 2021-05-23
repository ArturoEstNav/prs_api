require "test_helper"

class BodiesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get bodies_new_url
    assert_response :success
  end

  test "should get create" do
    get bodies_create_url
    assert_response :success
  end
end
