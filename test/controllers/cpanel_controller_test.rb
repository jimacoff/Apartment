require 'test_helper'

class CpanelControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cpanel_index_url
    assert_response :success
  end

  test "should get edit" do
    get cpanel_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get cpanel_destroy_url
    assert_response :success
  end

end
