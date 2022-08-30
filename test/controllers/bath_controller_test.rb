require "test_helper"

class BathControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get bath_new_url
    assert_response :success
  end

  test "should get index" do
    get bath_index_url
    assert_response :success
  end

  test "should get show" do
    get bath_show_url
    assert_response :success
  end

  test "should get edit" do
    get bath_edit_url
    assert_response :success
  end
end
