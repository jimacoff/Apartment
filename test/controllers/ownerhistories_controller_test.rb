require 'test_helper'

class OwnerhistoriesControllerTest < ActionDispatch::IntegrationTest
  test "should get form" do
    get ownerhistories_form_url
    assert_response :success
  end

  test "should get edit" do
    get ownerhistories_edit_url
    assert_response :success
  end

end
