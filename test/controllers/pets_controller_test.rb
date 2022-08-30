require "test_helper"

class PetsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get pets_new_url
    assert_response :success
  end

  test "should get index" do
    get pets_index_url
    assert_response :success
  end

  test "should get show" do
    get pets_show_url
    assert_response :success
  end

  test "should get edit" do
    get pets_edit_url
    assert_response :success
  end
end
