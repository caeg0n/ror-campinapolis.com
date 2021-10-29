require 'test_helper'

class RegistroControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get registro_index_url
    assert_response :success
  end

end
