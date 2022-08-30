require "test_helper"

class MedicationsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get medications_new_url
    assert_response :success
  end

  test "should get index" do
    get medications_index_url
    assert_response :success
  end

  test "should get edit" do
    get medications_edit_url
    assert_response :success
  end
end
