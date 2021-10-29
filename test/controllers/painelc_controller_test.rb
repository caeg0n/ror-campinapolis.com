require 'test_helper'

class PainelcControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get painelc_index_url
    assert_response :success
  end

end
