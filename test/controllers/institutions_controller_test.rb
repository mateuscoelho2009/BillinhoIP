require 'test_helper'

class InstitutionsControllerTest < ActionDispatch::IntegrationTest
  test "should get list" do
    get institutions_list_url
    assert_response :success
  end

  test "should get show" do
    get institutions_show_url
    assert_response :success
  end

  test "should get new" do
    get institutions_new_url
    assert_response :success
  end

  test "should get create" do
    get institutions_create_url
    assert_response :success
  end

end
