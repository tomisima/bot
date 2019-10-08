require 'test_helper'

class BotsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bots_index_url
    assert_response :success
  end

end
