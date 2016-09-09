require 'test_helper'

class WhiteboardControllerTest < ActionDispatch::IntegrationTest
  test "should get form" do
    get whiteboard_form_url
    assert_response :success
  end

end
