require 'test_helper'

class PostflatControllerTest < ActionDispatch::IntegrationTest
  test "should get idex" do
    get postflat_idex_url
    assert_response :success
  end

  test "should get destroy" do
    get postflat_destroy_url
    assert_response :success
  end

end
