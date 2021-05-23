require "test_helper"

class ElectronicSpecListsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get electronic_spec_lists_new_url
    assert_response :success
  end

  test "should get create" do
    get electronic_spec_lists_create_url
    assert_response :success
  end

  test "should get edit" do
    get electronic_spec_lists_edit_url
    assert_response :success
  end

  test "should get update" do
    get electronic_spec_lists_update_url
    assert_response :success
  end
end
