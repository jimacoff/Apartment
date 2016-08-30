require 'test_helper'

class TicketsControllerTest < ActionDispatch::IntegrationTest
  test "should get section2" do
    get tickets_section2_url
    assert_response :success
  end

  test "should get section3" do
    get tickets_section3_url
    assert_response :success
  end

  test "should get section1" do
    get tickets_section1_url
    assert_response :success
  end

end
