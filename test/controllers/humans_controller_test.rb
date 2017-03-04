require 'test_helper'

class HumansControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get humans_index_url
    assert_response :success
  end

end
