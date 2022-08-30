require "test_helper"

class VaccinesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get vaccines_new_url
    assert_response :success
  end

  test "should get index" do
    get vaccines_index_url
    assert_response :success
  end

  test "should get destroy" do
    get vaccines_destroy_url
    assert_response :success
  end
end
